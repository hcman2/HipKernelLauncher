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
constexpr size_t WAVEFRONT_SIZE = 64;
constexpr auto WORKGROUP_SIZE = NUM_WAVES * WAVEFRONT_SIZE;
constexpr size_t MT0 = 16;
constexpr size_t MT1 = 256;

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

template<typename Src, typename Dst>
void castArray(Dst *dst, const Src *src, size_t numElements) {
    std::transform(src, src + numElements, dst, [](const Src &src) {
        return Dst(src);
    });
}

template<typename Src, typename Dst>
std::vector<Dst> toCpuArray(Src *src, size_t numElements) {
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

template<typename DataType, typename ScalarType>
std::vector<float> launchFusedGemm(const std::string &kernelPath, hipStream_t stream, size_t m, size_t n, size_t k,
                                   DataType *d, DataType *a, DataType *b, DataType *c, DataType *b1,
                                   uint32_t staggerUIter,
                                   ScalarType alpha, ScalarType beta, const ProfileSetting profile,
                                   float &timeElapsedMs) {
    hipModule_t module;
    auto err = hipModuleLoad(&module, kernelPath.c_str());
    assert(!err && "Unable to load module");
    hipFunction_t kernelFunc;
    err = hipModuleGetFunction(&kernelFunc, module, "Cijk_Alik_Bljk_HHS_BH_MT16x256x16_MI16x16x4x4_SN_K1_MIWT1_1");
    assert(!err && "Unable to get function");
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
    kArgs.addArg<uint64_t>(n * n);
    kArgs.addArg<uint32_t>(n);
    kArgs.addArg<uint32_t>(n * n);
    kArgs.addArg(b1);
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
                                    8704,
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
    //std::cout << profile.opName << " time elapsed: " << totalTime / profile.numRuns << " ms\n";
    hipModuleUnload(module);
    return toCpuArray<DataType, float>(d, m * n);
}

int main(int argc, char **argv) {
    auto err = hipInit(0);
    err = hipSetDevice(1);

    // prepare resources
    const uint64_t m = std::atoi(argv[2]);//{128 * 1600};
    const uint64_t n = std::atoi(argv[3]);//{32};
    const uint64_t k = std::atoi(argv[4]);//{576};
    const size_t numOperations = 2 * m * n * k + m * n * n * 2;
    //std::cout << "# of operations: " << numOperations << '\n';
    std::random_device randDev;
    std::default_random_engine randEng(randDev());
    std::uniform_real_distribution<float> dist(-1.f, 1.f);
    std::vector<float> cpuMatA(m * k, .2f);
    std::vector<float> cpuMatB(k * n, .3f);
    std::vector<float> cpuMatC(m * n, 1.f);
    std::vector<float> cpuMatD(m * n, 1.f);
    std::vector<float> cpuMatB1(n * n, 1.f);
    auto randInitMat = [&randEng, &dist] (std::vector<float> &mat) {
        std::transform(begin(mat), end(mat), begin(mat), [&randEng, &dist](float v) {
            return dist(randEng);
        });
        };

    //randInitMat(cpuMatA);
    // randInitMat(cpuMatB);
    // randInitMat(cpuMatC);
    // randInitMat(cpuMatB1);

    __half *matA = new __half[m * k];
    __half *matB = new __half[k * n];
    __half *matC = new __half[m * n];
    __half *matD = new __half[m * n];
    __half *matB1 = new __half[n * n];
    __half *gpuMatA{};
    __half *gpuMatB{};
    __half *gpuMatC{};
    __half *gpuMatD{};
    __half *gpuMatB1{};
    err = hipMalloc(&gpuMatA, m * k * sizeof(__half));
    err = hipMalloc(&gpuMatB, k * n * sizeof(__half));
    err = hipMalloc(&gpuMatC, m * n * sizeof(__half));
    err = hipMalloc(&gpuMatD, m * n * sizeof(__half));
    err = hipMalloc(&gpuMatB1, n * n * sizeof(__half));
    castArray(matA, cpuMatA.data(), cpuMatA.size());
    castArray(matB, cpuMatB.data(), cpuMatB.size());
    castArray(matC, cpuMatC.data(), cpuMatC.size());
    castArray(matB1, cpuMatB1.data(), cpuMatB1.size());
    castArray(matD, cpuMatD.data(), cpuMatD.size());
    err = hipMemcpyHtoD(gpuMatA, matA, cpuMatA.size() * sizeof(__half));
    err = hipMemcpyHtoD(gpuMatB, matB, cpuMatB.size() * sizeof(__half));
    err = hipMemcpyHtoD(gpuMatC, matC, cpuMatC.size() * sizeof(__half));
    err = hipMemcpyHtoD(gpuMatB1, matB1, cpuMatB1.size() * sizeof(__half));
    err = hipMemcpyHtoD(gpuMatD, matD, cpuMatD.size() * sizeof(__half));
    float alpha = 1.f;
    float beta = 0.f;
    hipStream_t stream;
    err = hipStreamCreate(&stream);
    float fusedTimeMs{};
    auto fusedResult = launchFusedGemm(argv[1], stream, m, n, k, gpuMatD, gpuMatA, gpuMatB, gpuMatC, gpuMatB1, 31, alpha, beta, ProfileSetting{"GEMM 0+1", 10}, fusedTimeMs);
    std::cout << "Fused flops: " << (numOperations / (fusedTimeMs * 1e9)) << " TFlops\n";
    // free up all resources
    err = hipStreamDestroy(stream);
    err = hipFree(gpuMatA);
    err = hipFree(gpuMatB);
    err = hipFree(gpuMatC);
    err = hipFree(gpuMatD);
    err = hipFree(gpuMatB1);
    float tensileTimeMs{};
    auto tensileRef = runTensileRefImpl("/workspace/projects/mi300/Tensile/KernelLauncher/ref2.co",
                                        m, n, k, cpuMatA, cpuMatB, cpuMatC, cpuMatB1, tensileTimeMs);

    auto cpuRef = runCpuRef(cpuMatA, cpuMatB, cpuMatC, cpuMatB1, MatDesc({m, k}, false), MatDesc({k, n}, false), MatDesc({m, n}, false), MatDesc({n, n}, false), alpha, beta);

    for (size_t i = 0; i < tensileRef.size(); ++i) {
        if (tensileRef[i] != fusedResult[i]) {
            std::cout << i << ": " << tensileRef[i] << " != " << fusedResult[i] << ", " << cpuRef[i] << '\n';
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
    delete [] matB1;

    return 0;
}
