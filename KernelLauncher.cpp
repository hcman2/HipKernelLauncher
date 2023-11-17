#include <sys/stat.h>
#include <cassert>
#include <cstring>
#include <iostream>
#include <random>
#include <string>
#include <type_traits>
#include <vector>
#include <hip/hip_common.h>
#include <hip/hip_ext.h>
#include <hip/hip_fp16.h>
#include <hip/hip_runtime_api.h>
constexpr size_t NUM_WAVES = 4;
constexpr size_t WAVEFRONT_SIZE = 32;
constexpr auto WORKGROUP_SIZE = NUM_WAVES * WAVEFRONT_SIZE;
constexpr size_t MT0 = 64;
constexpr size_t MT1 = 64;

#define DEBUG_LOG_ENABLE (1)
#ifdef DEBUG_LOG_ENABLE
#define DEBUG_LOG printf
#else
#define DEBUG_LOG(...)_
#endif

struct KernelArgs {
    template<typename T>
    size_t addArg(const T& arg) {
        static_assert(std::is_pod<T>::value, "T must be pod");
        using std::begin;
        using std::end;
        alignTo(4);
        std::vector<uint8_t> d(sizeof(T), 0);
        std::memcpy(d.data(), &arg, d.size());
        data.insert(end(data), begin(d), end(d));
        return data.size();
    }

    size_t alignTo(size_t alignment) {
        using std::end;
        const auto res = data.size() % alignment;
        data.insert(end(data), (alignment - res) % alignment, 0);
        return data.size();
    }

    void *rawData() {
        return data.data();
    }

    std::vector<uint8_t> data;
};

float cpu_half2float(unsigned short x)
{
    unsigned sign = ((x >> 15) & 1);
    unsigned exponent = ((x >> 10) & 0x1f);
    unsigned mantissa = ((x & 0x3ff) << 13);
    if (exponent == 0x1f) {  /* NaN or Inf */
        mantissa = (mantissa ? (sign = 0, 0x7fffff) : 0);
        exponent = 0xff;
    } else if (!exponent) {  /* Denorm or Zero */
        if (mantissa) {
            unsigned int msb;
            exponent = 0x71;
            do {
                msb = (mantissa & 0x400000);
                mantissa <<= 1;  /* normalize */
                --exponent;
            } while (!msb);
            mantissa &= 0x7fffff;  /* 1.mantissa is implicit */
        }
    } else {
        exponent += 0x70;
    }
    int temp = ((sign << 31) | (exponent << 23) | mantissa);

    return *((float*)((void*)&temp));
}

template<typename Src, typename Dst>
void castArray(Dst *dst, const Src *src, size_t numElements) {
    DEBUG_LOG("[castArray] numElements = %d\n",numElements);
    //std::transform(src, src + numElements, dst, [](const Src &src) {
    //    return Dst(src);
    //});
    for(int i=0;i<numElements;i++)
    {
        dst[i] = static_cast<Dst>(src[i]);
    }
}

template<typename Src, typename Dst>
std::vector<Dst> toCpuArray(Src *src, size_t numElements) {
    DEBUG_LOG("[toCpuArray] numElements = %d\n",numElements);
    std::vector<Src> buf(numElements);
    hipMemcpyDtoH(buf.data(), src, numElements * sizeof(Src));
    std::vector<Dst> ret(numElements);
    castArray(ret.data(), src, numElements);
    return ret;
}

struct ProfileSetting {
    std::string opName;
    size_t numRuns;
};

template<typename DataType, typename ScalarType>
float launchGemmKernel(hipFunction_t func, hipStream_t stream, size_t m, size_t n, size_t k,
                      DataType *d, DataType *a, DataType *b, DataType *c,
                      uint32_t staggerUIter,
                      ScalarType alpha, ScalarType beta, const ProfileSetting &profile) {
    KernelArgs kArgs;
    kArgs.addArg(m * n);
    kArgs.addArg(m * k);
    kArgs.addArg(k * n);
    kArgs.addArg(d);
    kArgs.addArg(c);
    kArgs.addArg(a);
    kArgs.addArg(b);
    kArgs.addArg(alpha);
    kArgs.addArg(beta);
    kArgs.addArg<uint32_t>(m);
    kArgs.addArg<uint32_t>(m * n);
    kArgs.addArg<uint32_t>(m);
    kArgs.addArg<uint32_t>(m * n);
    kArgs.addArg<uint32_t>(m);
    kArgs.addArg<uint32_t>(m * k);
    kArgs.addArg<uint32_t>(k);
    kArgs.addArg<uint32_t>(k * n);
    kArgs.addArg<uint32_t>(m);
    kArgs.addArg<uint32_t>(n);
    kArgs.addArg<uint32_t>(1u);
    kArgs.addArg<uint32_t>(k);
    kArgs.addArg<uint32_t>(staggerUIter);
    kArgs.addArg<uint32_t>(m / MT0);
    kArgs.addArg<uint32_t>(n / MT1);
    kArgs.addArg<uint32_t>(n / MT1);
    kArgs.addArg<uint32_t>(n % MT1);
    kArgs.addArg<uint32_t>(2147483649u);
    kArgs.addArg(0u);
    kArgs.addArg(0u);
    kArgs.addArg(0u);
    kArgs.addArg(0u);
    kArgs.addArg(0u);
    kArgs.alignTo(8);
    auto argSize = kArgs.data.size();
    void *launchArgs[] = {
        HIP_LAUNCH_PARAM_BUFFER_POINTER,
        kArgs.rawData(),
        HIP_LAUNCH_PARAM_BUFFER_SIZE,
        &argSize,
        HIP_LAUNCH_PARAM_END
    };

    float totalTime{};
    hipError_t err{};

    for (size_t i = 0; i < profile.numRuns; ++i) {
        hipEvent_t startEvt;
        hipEvent_t endEvt;
        err = hipEventCreate(&startEvt);
        err = hipEventCreate(&endEvt);
        err = hipEventRecord(startEvt, stream);
        err = hipExtModuleLaunchKernel(func,
                                    WORKGROUP_SIZE * m / MT0, 1, 1,
                                    WORKGROUP_SIZE, 1, 1,
                                    8704,
                                    stream,
                                    nullptr,
                                    &launchArgs[0],
                                    nullptr,
                                    nullptr);
        err = hipEventRecord(endEvt, stream);
        err = hipEventSynchronize(endEvt);
        err = hipStreamSynchronize(stream);
        float time{};
        err = hipEventElapsedTime(&time, startEvt, endEvt);
        totalTime += time;
        hipEventDestroy(endEvt);
        hipEventDestroy(startEvt);
    }

    //std::cout << profile.opName << " time elapsed: " << totalTime / profile.numRuns << " ms\n";
    return totalTime / profile.numRuns;
}

struct MatDesc {
    MatDesc(std::array<std::size_t, 2> s, bool isRowMajor)
    : shape(s), rowMaj(isRowMajor) {}

    std::array<std::size_t, 2> shape{0, 0};
    bool rowMaj{false};
};

template<typename DType>
DType getElement(const DType *data, const MatDesc &desc, std::size_t row, std::size_t col) {
    const auto numRows = desc.shape[0];
    const auto numCols = desc.shape[1];

    if (desc.rowMaj) {
        return data[numCols * row + col];
    }

    return data[numRows * col + row];
}

template<typename DType>
void setElement(DType value, DType *data, const MatDesc &desc, std::size_t row, std::size_t col) {
    const auto numRows = desc.shape[0];
    const auto numCols = desc.shape[1];

    if (desc.rowMaj) {
        data[numCols * row + col] = value;
        return;
    }

    data[numRows * col + row] = value;
}

template<typename DType>
std::vector<DType> runCpuRef(
    const std::vector<DType> &cpuMatA,
    const std::vector<DType> &cpuMatB,
    const std::vector<DType> &cpuMatC,
    const std::vector<DType> &cpuMatB1,
    MatDesc aDesc,
    MatDesc bDesc,
    MatDesc cDesc,
    MatDesc b1Desc,
    DType alpha,
    DType beta
    ) {

    const size_t m = aDesc.shape[0];
    const size_t n = bDesc.shape[1];
    const size_t k = aDesc.shape[1];
    std::vector<DType> d(m * n, DType(0));
    MatDesc dDesc({m, n}, false);

    for (size_t i = 0; i < m; ++i) {
        for (size_t j = 0; j < n; ++j) {
            DType tmp = getElement(cpuMatC.data(), cDesc, i, j) * beta;
            for (size_t l = 0; l < k; ++l) {
                tmp += getElement(cpuMatA.data(), aDesc, i, l) * getElement(cpuMatB.data(), bDesc, l, j);
            }
            tmp *= alpha;
            setElement(tmp, d.data(), dDesc, i, j);
        }
    }

    const auto k1 = n;

    std::vector<DType> d1(m * n, DType(0));

    for (size_t i = 0; i < m; ++i) {
        for (size_t j = 0; j < n; ++j) {
            DType tmp{};
            for (size_t l = 0; l < k1; ++l) {
                tmp += getElement(d.data(), aDesc, i, l) * getElement(cpuMatB1.data(), b1Desc, l, j);
            }
            setElement(tmp, d1.data(), dDesc, i, j);
        }
    }

    return d1;
}


template<typename DType>
std::vector<DType> runCpuSparseA(
    const std::vector<DType> &cpuMatA,
    const std::vector<DType> &cpuMatB,
    const std::vector<DType> &cpuMatC,
    const std::vector<uint8_t> &cpuMatMeta,
    MatDesc aDesc,
    MatDesc bDesc,
    MatDesc cDesc,
    MatDesc MetaDesc,
    DType alpha,
    DType beta
    ) {

    const size_t m = cDesc.shape[0];
    const size_t n = cDesc.shape[1];
    const size_t k = bDesc.shape[1];
    std::vector<DType> d(m * n, DType(0));
    MatDesc dDesc({m, n}, false);

    for (size_t i = 0; i < m; ++i) {
        for (size_t j = 0; j < n; ++j) {
            DType tmp = getElement(cpuMatC.data(), cDesc, i, j) * beta;
            for (size_t l = 0; l < k/8; ++l) {
                //do 4 MACs
                auto meta_val = getElement(cpuMatMeta.data(), MetaDesc, i, l);
                size_t offset0 = (meta_val >> 0) & 0x03;
                size_t offset1 = (meta_val >> 2) & 0x03;
                size_t offset2 = (meta_val >> 4) & 0x03;
                size_t offset3 = (meta_val >> 6) & 0x03;
                auto a_val0 = getElement(cpuMatA.data(), aDesc, i, 4*l + 0);
                auto b_val0 = getElement(cpuMatB.data(), bDesc, 8*l + offset0, j);
                tmp += a_val0 * b_val0;
                auto a_val1 = getElement(cpuMatA.data(), aDesc, i, 4*l + 1);
                auto b_val1 = getElement(cpuMatB.data(), bDesc, 8*l + offset1, j);
                tmp += a_val1 * b_val1;
                auto a_val2 = getElement(cpuMatA.data(), aDesc, i, 4*l + 2);
                auto b_val2 = getElement(cpuMatB.data(), bDesc, 8*l + 4 + offset2, j);
                tmp += a_val2 * b_val2;
                auto a_val3 = getElement(cpuMatA.data(), aDesc, i, 4*l + 3);
                auto b_val3 = getElement(cpuMatB.data(), bDesc, 8*l + 4 + offset3, j);
                tmp += a_val3 * b_val3;
            }
            tmp *= alpha;
            setElement(tmp, d.data(), dDesc, i, j);
        }
    }

    return d;
}

std::vector<float> runTensileRefImpl(const std::string &kernelPath, 
                                     size_t m, size_t n, size_t k,
                                     const std::vector<float> &cpuMatA,
                                     const std::vector<float> &cpuMatB,
                                     const std::vector<float> &cpuMatC,
                                     const std::vector<float> &cpuMatB1,
                                     float &totalTimeMs) {
    __half *matA = new __half[m * k];
    __half *matB = new __half[k * n];
    __half *matC = new __half[m * n];
    __half *matD = new __half[m * n];
    __half *matD0 = new __half[m * n];
    __half *matB1 = new __half[n * n];
    __half *gpuMatA{};
    __half *gpuMatB{};
    __half *gpuMatC{};
    __half *gpuMatD{};
    __half *gpuMatD0{};
    __half *gpuMatB1{};
    auto err = hipMalloc(&gpuMatA, m * k * sizeof(__half));
    err = hipMalloc(&gpuMatB, k * n * sizeof(__half));
    err = hipMalloc(&gpuMatC, m * n * sizeof(__half));
    err = hipMalloc(&gpuMatD, m * n * sizeof(__half));
    err = hipMalloc(&gpuMatD0, m * n * sizeof(__half));
    err = hipMalloc(&gpuMatB1, n * n * sizeof(__half));
    castArray(matA, cpuMatA.data(), cpuMatA.size());
    castArray(matB, cpuMatB.data(), cpuMatB.size());
    castArray(matC, cpuMatC.data(), cpuMatC.size());
    castArray(matB1, cpuMatB1.data(), cpuMatB1.size());
    err = hipMemcpyHtoD(gpuMatA, matA, cpuMatA.size() * sizeof(__half));
    err = hipMemcpyHtoD(gpuMatB, matB, cpuMatB.size() * sizeof(__half));
    err = hipMemcpyHtoD(gpuMatC, matC, cpuMatC.size() * sizeof(__half));
    err = hipMemcpyHtoD(gpuMatB1, matB1, cpuMatB1.size() * sizeof(__half));
    float alpha = 1.f;
    float beta = 0.f;
    hipStream_t stream;
    err = hipStreamCreate(&stream);
    hipModule_t module;
    err = hipModuleLoad(&module, kernelPath.c_str());
    hipFunction_t func;
    const auto kernelFuncName = "Cijk_Alik_Bljk_HHS_BH_MT16x256x16_MI16x16x4x4_SN_K1_MIWT1_1";
    err = hipModuleGetFunction(&func, module, kernelFuncName);
    float t0, t1;
    //first GEMM
    t0 = launchGemmKernel(func, stream, m, n, k, gpuMatD0, gpuMatA, gpuMatB, gpuMatC, 31u, alpha, beta, ProfileSetting{"GEMM_0", 10});
    //using SrcType = std::remove_pointer<decltype(gpuMatD0)>::type;
    //auto c = toCpuArray<SrcType, float>(gpuMatD0, m * n);

    //second GEMM
    t1 = launchGemmKernel(func, stream, m, n, n, gpuMatD, gpuMatD0, gpuMatB1, (__half *)nullptr, 31u, 1.f, 0.f, ProfileSetting{"GEMM_1", 10});
    totalTimeMs = t0 + t1;
    //std::cout << "GEMM_0 + GEMM_1 time elapsed: " << t0 + t1 << " ms\n";

    auto ret = toCpuArray<__half, float>(gpuMatD, m * n);
    hipStreamDestroy(stream);
    hipFree(gpuMatA);
    hipFree(gpuMatB);
    hipFree(gpuMatB1);
    hipFree(gpuMatC);
    hipFree(gpuMatD);
    hipFree(gpuMatD0);
    hipModuleUnload(module);
    delete [] matA;
    delete [] matB;
    delete [] matC;
    delete [] matD;
    delete [] matD0;
    delete [] matB1;
    return ret;
}

inline bool exist_test (const std::string& name) {
  struct stat buffer;   
  return (stat (name.c_str(), &buffer) == 0); 
}
static std::string kernelName;
template<typename SrcDataType,typename DestDataType, typename ScalarType>
std::vector<DestDataType> launchSparseA(const std::string &kernelPath, hipStream_t stream, size_t m, size_t n, size_t k,
                                 DestDataType *d, SrcDataType *a, SrcDataType *b, DestDataType *c, uint8_t *metadata,
                                 uint32_t staggerUIter,
                                 ScalarType alpha, ScalarType beta, const ProfileSetting profile,
                                 float &timeElapsedMs) {
    hipModule_t module;
    if(exist_test(kernelPath))
    {
        auto err = hipModuleLoad(&module, kernelPath.c_str());
        assert(!err && "Unable to load module");
        hipFunction_t kernelFunc;
        //err = hipModuleGetFunction(&kernelFunc, module, "Cijk_Ailk_Bljk_HHS_BH_SPA_MT64x64x64_MI16x16x1_SN_GSU1_K1_MIWT2_2");
        err = hipModuleGetFunction(&kernelFunc, module, "Cijk_Ailk_Bljk_HSS_BH_SPA_MT16x16x64_MI16x16x1_SN_GSU1_K1_MIWT1_1");
        assert(!err && "Unable to get function");
        KernelArgs kArgs;
        kArgs.addArg(m);
        kArgs.addArg(n);
        kArgs.addArg(1);
        kArgs.addArg(k);

        kArgs.addArg(d);
        kArgs.addArg(c);
        kArgs.addArg(a);
        kArgs.addArg(b);
        kArgs.addArg(metadata);

        kArgs.addArg<uint32_t>(m);
        kArgs.addArg<uint32_t>(m * n);
        kArgs.addArg<uint32_t>(m);
        kArgs.addArg<uint32_t>(m * n);
        kArgs.addArg<uint32_t>(m);       //strideA0
        kArgs.addArg<uint32_t>(m * k/2); //strideA1
        kArgs.addArg<uint32_t>(k);     
        kArgs.addArg<uint32_t>(k * n);
        kArgs.addArg<uint32_t>(k/4);       //strideMetadata0 
        kArgs.addArg<uint32_t>(k/4 * m);   //strideMetadata1 

        kArgs.addArg(alpha);
        kArgs.addArg(beta);
        kArgs.addArg<uint32_t>(1);               //gsu

        kArgs.alignTo(8);
        size_t argSize = kArgs.data.size();

        void *launchArgs[] = {
            HIP_LAUNCH_PARAM_BUFFER_POINTER,
            kArgs.rawData(),
            HIP_LAUNCH_PARAM_BUFFER_SIZE,
            &argSize,
            HIP_LAUNCH_PARAM_END
        };

        float totalTime{};

        for (size_t i = 0; i < profile.numRuns; ++i) {
            hipEvent_t endEvt;
            hipEvent_t startEvt;
            err = hipEventCreate(&endEvt);
            err = hipEventCreate(&startEvt);
            err = hipEventRecord(startEvt, stream);
            err = hipExtModuleLaunchKernel(kernelFunc, 
                                        WORKGROUP_SIZE * m / MT0, 1, 1,
                                        WORKGROUP_SIZE, 1, 1,
                                        31744,
                                        stream,
                                        nullptr,
                                        &launchArgs[0],
                                        nullptr,
                                        nullptr);
            err = hipEventRecord(endEvt, stream);
            err = hipEventSynchronize(endEvt);
            err = hipStreamSynchronize(stream);
            float t{};
            err = hipEventElapsedTime(&t, startEvt, endEvt);
            err = hipEventDestroy(endEvt);
            err = hipEventDestroy(startEvt);
            totalTime += t;
        }
        timeElapsedMs = totalTime / profile.numRuns;
        std::cout << profile.opName << " time elapsed: " << totalTime / profile.numRuns << " ms\n";
        hipModuleUnload(module);
        std::cout <<"....hipModuleUnload done"<<std::endl;
    }
    else
    {
        std::cout <<"kernel path doesn't exist. Skip running kernel."<<std::endl;
    }

    std::vector<DestDataType> buf(m * n);
    hipMemcpyDtoH(buf.data(), d, m * n * sizeof(DestDataType));
    return buf;
    // std::vector<float> ret(m * n);
    // for(int i=0;i<m * n;i++)
    // {
    //     ret[i] = cpu_half2float(buf[i]);
    // }
    // std::cout <<"....cpu_half2float done"<<std::endl;

    //auto ret = toCpuArray<DataType, float>(d, m * n);
    //std::cout <<"....toCpuArray done"<<std::endl;
    //return ret;
}

bool checkSparseASize(uint64_t m, uint64_t n, uint64_t k)
{
    return true;
}

int main(int argc, char **argv) {
    DEBUG_LOG("Start....\n");
    auto err = hipInit(0);
    err = hipSetDevice(1);
    DEBUG_LOG("hipSetDevice done....\n");

    using DestDataType = float;
    using SrcDataType = __half;
    // prepare resources
    const uint64_t m = std::atoi(argv[2]);//{128 * 1600};
    const uint64_t n = std::atoi(argv[3]);//{32};
    const uint64_t k = std::atoi(argv[4]);//{576};
    const size_t numOperations = 2 * m * n * k + m * n * n * 2;
    //check size validation
    if(!checkSparseASize(m,n,k))
    {
        std::cout<<"ERROR:checkSparseASize fail. "<<m<<","<<n<<","<<k<<std::endl; 
        return 0;
    }
    std::cout << "# of operations: " << numOperations << '\n';
    std::random_device randDev;
    std::default_random_engine randEng(randDev());
    std::uniform_real_distribution<float> dist(-1.f, 1.f);
    std::vector<float>   cpuMatA(m * k/2, .2f);
    std::vector<float>   cpuMatB(k * n, .3f);
    std::vector<float>   cpuMatC(m * n, 1.f);
    std::vector<float>   cpuMatD(m * n, 1.f);
    std::vector<uint8_t> cpuMatMeta(n * k/8, 0);
    auto randInitMat = [&randEng, &dist] (std::vector<float> &mat) {
        std::transform(begin(mat), end(mat), begin(mat), [&randEng, &dist](float v) {
            return dist(randEng);
        });
    };

    
    //randInitMat(cpuMatA);
    // randInitMat(cpuMatB);
    // randInitMat(cpuMatC);

    SrcDataType *matA = new SrcDataType[m * k/2];
    SrcDataType *matB = new SrcDataType[k * n];
    DestDataType *matC = new DestDataType[m * n];
    DestDataType *matD = new DestDataType[m * n];
    uint8_t *matMeta = new uint8_t[m * k/4];
    SrcDataType *gpuMatA{};
    SrcDataType *gpuMatB{};
    DestDataType *gpuMatC{};
    DestDataType *gpuMatD{};
    uint8_t *gpuMatMeta{};
    err = hipMalloc(&gpuMatA, m * k/2 * sizeof(SrcDataType));
    err = hipMalloc(&gpuMatB, k * n * sizeof(SrcDataType));
    err = hipMalloc(&gpuMatC, m * n * sizeof(DestDataType));
    err = hipMalloc(&gpuMatD, m * n * sizeof(DestDataType));
    err = hipMalloc(&gpuMatMeta, m * k/8 * sizeof(uint8_t));
    DEBUG_LOG("hipMalloc done....\n");
    castArray(matA, cpuMatA.data(), cpuMatA.size());
    DEBUG_LOG("matA[0] = 0x%08x\n", matA[0]);
    castArray(matB, cpuMatB.data(), cpuMatB.size());
    castArray(matC, cpuMatC.data(), cpuMatC.size());
    castArray(matMeta, cpuMatMeta.data(), cpuMatMeta.size());
    castArray(matD, cpuMatD.data(), cpuMatD.size());
    DEBUG_LOG("castArray done....\n");
    err = hipMemcpyHtoD(gpuMatA, matA, cpuMatA.size() * sizeof(SrcDataType));
    err = hipMemcpyHtoD(gpuMatB, matB, cpuMatB.size() * sizeof(SrcDataType));
    err = hipMemcpyHtoD(gpuMatC, matC, cpuMatC.size() * sizeof(DestDataType));
    err = hipMemcpyHtoD(gpuMatMeta, matMeta, cpuMatMeta.size() * sizeof(uint8_t));
    err = hipMemcpyHtoD(gpuMatD, matD, cpuMatD.size() * sizeof(DestDataType));
    DEBUG_LOG("hipMemcpyHtoD done....\n");
    float alpha = 1.f;
    float beta = 0.f;
    hipStream_t stream;
    err = hipStreamCreate(&stream);
    float fusedTimeMs{};
    DEBUG_LOG("kernel path : %s\n",argv[1]);
    auto fusedResult = launchSparseA(argv[1], stream, m, n, k, gpuMatD, gpuMatA, gpuMatB, gpuMatC, gpuMatMeta, 31, alpha, beta, ProfileSetting{"Sparse A", 1}, fusedTimeMs);
    std::cout << "SparseA flops: " << (numOperations / (fusedTimeMs * 1e9)) << " TFlops\n";
    // free up all resources
    err = hipStreamDestroy(stream);
    err = hipFree(gpuMatA);
    err = hipFree(gpuMatB);
    err = hipFree(gpuMatC);
    err = hipFree(gpuMatD);
    err = hipFree(gpuMatMeta);
    float tensileTimeMs{};
    //auto tensileRef = runTensileRefImpl("/workspace/projects/mi300/Tensile/KernelLauncher/ref2.co",
    //                                    m, n, k, cpuMatA, cpuMatB, cpuMatC, cpuMatB1, tensileTimeMs);

    //auto cpuRef = runCpuRef(cpuMatA, cpuMatB, cpuMatC, cpuMatB1, MatDesc({m, k}, false), MatDesc({k, n}, false), MatDesc({m, n}, false), MatDesc({n, n}, false), alpha, beta);
    DEBUG_LOG("runCpuSparseA start\n");
    auto cpuRef = runCpuSparseA(cpuMatA, cpuMatB, cpuMatC, cpuMatMeta, MatDesc({m, k/2}, false), MatDesc({k, n}, false), MatDesc({m, n}, false), MatDesc({k/8, n}, false), alpha, beta);
    DEBUG_LOG("runCpuSparseA end\n");

    for (size_t i = 0; i < cpuRef.size(); ++i) {
        auto cpuVal = (static_cast<float>(cpuRef[i]));
        auto gpuVal = (static_cast<float>(fusedResult[i]));
        if (cpuVal != gpuVal) {
            std::cout << i << ": " << cpuVal << " != " << gpuVal << '\n';
            break;
        }
    }

    std::cout << "Tensile flops: " << numOperations / (tensileTimeMs * 1e9) << " TFlops\n";

    std::cout << "Performance boost: " << (tensileTimeMs / fusedTimeMs) * 100 << "%\n";
    std::cout << (tensileTimeMs / fusedTimeMs) * 100 << "%\n";

    delete [] matA;
    delete [] matB;
    delete [] matC;
    delete [] matD;
    delete [] matMeta;

    return 0;
}
