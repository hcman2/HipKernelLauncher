
/******************************************/
/* Begin Kernel                           */
/******************************************/
.amdgcn_target "amdgcn-amd-amdhsa--gfx1201"
.text
.protected Cijk_Ailk_Bljk_HSS_BH_SPA_MT16x16x64_MI16x16x1_SN_GSU1_K1_MIWT1_1
.globl Cijk_Ailk_Bljk_HSS_BH_SPA_MT16x16x64_MI16x16x1_SN_GSU1_K1_MIWT1_1
.p2align 8
.type Cijk_Ailk_Bljk_HSS_BH_SPA_MT16x16x64_MI16x16x1_SN_GSU1_K1_MIWT1_1,@function
.section .rodata,#alloc
.p2align 6
.amdhsa_kernel Cijk_Ailk_Bljk_HSS_BH_SPA_MT16x16x64_MI16x16x1_SN_GSU1_K1_MIWT1_1
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_next_free_vgpr 128 // vgprs
  .amdhsa_next_free_sgpr 78 // sgprs
  .amdhsa_group_segment_fixed_size 12800 // lds bytes
  .amdhsa_wavefront_size32 1 // 32-thread wavefronts
  .amdhsa_private_segment_fixed_size 0
  .amdhsa_system_sgpr_workgroup_id_x 1
  .amdhsa_system_sgpr_workgroup_id_y 1
  .amdhsa_system_sgpr_workgroup_id_z 1
  .amdhsa_system_vgpr_workitem_id 0
  .amdhsa_float_denorm_mode_32 3
  .amdhsa_float_denorm_mode_16_64 3
.end_amdhsa_kernel
.text
/* Num VGPR   =128 */
/* Num AccVGPR=0 */
/* Num SGPR   =78 */

/******************************************/
/* Optimizations and Config:              */
/******************************************/
/* ThreadTile= 8 x 1 */
/* SubGroup= 2 x 16 */
/* VectorWidthA=1 */
/* VectorWidthB=1 */
/* GlobalReadVectorWidthA=2, GlobalReadVectorWidthB=1 */
/* DirectToLdsA=False */
/* DirectToLdsB=False */
/* UseSgprForGRO=False */
.amdgpu_metadata
---
amdhsa.version:
  - 1
  - 0
amdhsa.kernels:
  - .name: Cijk_Ailk_Bljk_HSS_BH_SPA_MT16x16x64_MI16x16x1_SN_GSU1_K1_MIWT1_1
    .symbol: 'Cijk_Ailk_Bljk_HSS_BH_SPA_MT16x16x64_MI16x16x1_SN_GSU1_K1_MIWT1_1.kd'
    .language:                   OpenCL C
    .language_version:
      - 2
      - 0
    .args:
      - .name:            SizesFree0
        .size:            4
        .offset:          0
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree1
        .size:            4
        .offset:          4
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree2
        .size:            4
        .offset:          8
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesSum0
        .size:            4
        .offset:          12
        .value_kind:      by_value
        .value_type:      u32
      - .name:            D
        .size:            8
        .offset:          16
        .value_kind:      global_buffer
        .value_type:      f32
        .address_space:   generic
      - .name:            C
        .size:            8
        .offset:          24
        .value_kind:      global_buffer
        .value_type:      f32
        .address_space:   generic
      - .name:            A
        .size:            8
        .offset:          32
        .value_kind:      global_buffer
        .value_type:      f16
        .address_space:   generic
      - .name:            B
        .size:            8
        .offset:          40
        .value_kind:      global_buffer
        .value_type:      f16
        .address_space:   generic
      - .name:            MetaData
        .size:            8
        .offset:          48
        .value_kind:      global_buffer
        .value_type:      void
        .address_space:   generic
      - .name:            strideD0
        .size:            4
        .offset:          56
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideD1
        .size:            4
        .offset:          60
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideC0
        .size:            4
        .offset:          64
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideC1
        .size:            4
        .offset:          68
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideA0
        .size:            4
        .offset:          72
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideA1
        .size:            4
        .offset:          76
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideB0
        .size:            4
        .offset:          80
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideB1
        .size:            4
        .offset:          84
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideMetadata0
        .size:            4
        .offset:          88
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideMetadata1
        .size:            4
        .offset:          92
        .value_kind:      by_value
        .value_type:      u32
      - .name:            alpha
        .size:            4
        .offset:          96
        .value_kind:      by_value
        .value_type:      f32
      - .name:            beta
        .size:            4
        .offset:          100
        .value_kind:      by_value
        .value_type:      f32
      - .name:            gsu
        .size:            4
        .offset:          104
        .value_kind:      by_value
        .value_type:      u32
    .group_segment_fixed_size:   12800
    .kernarg_segment_align:      8
    .kernarg_segment_size:       112
    .max_flat_workgroup_size:    32
    .private_segment_fixed_size: 0
    .sgpr_count:                 78
    .sgpr_spill_count:           0
    .vgpr_count:                 128
    .vgpr_spill_count:           0
    .wavefront_size:             32
...
.end_amdgpu_metadata
Cijk_Ailk_Bljk_HSS_BH_SPA_MT16x16x64_MI16x16x1_SN_GSU1_K1_MIWT1_1:

/* Magic div and mod functions */
.macro V_MAGIC_DIV dstIdx:req dividend:req magicNumber:req magicShift:req magicA:req
    v_mul_hi_u32 v[\dstIdx+1] \dividend \magicNumber
    v_mul_lo_u32 v[\dstIdx+0] \dividend \magicA
    v_add_nc_u32 v[\dstIdx+0] v[\dstIdx+0] v[\dstIdx+1]
    v_lshrrev_b32 v[\dstIdx+0] \magicShift v[\dstIdx+0]
.endm

/******************************************/
/* VGPR Assignments                       */
/******************************************/
/* ValuC range: [0-8), serializedStore enabled */
.set vgprValuC, 0
/* ValuA/B   Xn=PLR buffer idx,  In=InnerUnroll idx */
.set vgprValuA_X0_I0, 10
.set vgprValuA_X1_I0, 14
.set vgprValuA_X0_I0_D1, 18
.set vgprValuA_X1_I0_D1, 22
.set vgprValuB_X0_I0, 27
.set vgprValuB_X1_I0, 35
.set vgprValuMetadata, 43
.set vgprLocalWriteAddrA, 49
.set vgprLocalWriteAddrB, 50
.set vgprGlobalReadOffsetA, 51
.set vgprGlobalReadOffsetB, 59
.set vgprGlobalReadOffsetMetadata, 91
.set vgprG2LA, 92
.set vgprG2LB, 100
.set vgprLocalReadAddrA, 116
.set vgprLocalReadAddrB, 117
.set vgprSerial, 118

/******************************************/
/* SGPR Assignments                       */
/******************************************/
.set sgprKernArgAddress, 0
.set sgprWorkGroup0, 2
.set sgprWorkGroup1, 3
.set sgprWorkGroup2, 4
.set sgprLoopCounterL, 5
.set sgprOrigLoopCounter, 6
.set sgprSrdD, 8
.set sgprSrdC, 12
.set sgprNumWorkGroups0, 7
.set sgprNumWorkGroups1, 16
.set sgprSizesFree, 20
.set sgprSizesSum, 23
.set sgprAddressD, 24
.set sgprAddressC, 26
.set sgprAddressA, 28
.set sgprAddressB, 30
.set sgprAddressMetadata, 32
.set sgprStridesD, 34
.set sgprStridesC, 36
.set sgprStridesA, 38
.set sgprStridesB, 40
.set sgprStridesMetadata, 42
.set sgprAlpha, 44
.set sgprBeta, 45
.set sgprGSU, 46
.set sgprSrdA, 48
.set sgprSrdB, 52
.set sgprSrdMetadata, 56
.set sgprShadowLimitA, 18
.set sgprShadowLimitB, 60
.set sgprShadowLimitMetadata, 62
.set sgprStaggerUIter, 17
.set sgprWrapUA, 64
.set sgprWrapUB, 66
.set sgprWrapUMetadata, 68
.set sgprGlobalReadIncsA, 47
.set sgprGlobalReadIncsB, 70

/* Size Assignments */
.set sgprSizeI, sgprSizesFree+0
.set sgprSizeJ, sgprSizesFree+1
.set sgprSizeK, sgprSizesFree+2
.set sgprSizeL, sgprSizesSum+0

/* Stride Assignments */
.set constStrideD0I, 1
.set sgprStrideD1J, sgprStridesD+0
.set sgprStrideDK, sgprStridesD+1
.set constStrideC0I, 1
.set sgprStrideC1J, sgprStridesC+0
.set sgprStrideCK, sgprStridesC+1
.set constStrideA0I, 1
.set sgprStrideAL, sgprStridesA+0
.set sgprStrideAK, sgprStridesA+1
.set constStrideBL, 1
.set sgprStrideB1J, sgprStridesB+0
.set sgprStrideBK, sgprStridesB+1
.set constStrideMetadataL, 1
.set sgprStrideMetadata0I, sgprStridesMetadata+0
.set sgprStrideMetadataK, sgprStridesMetadata+1

.set MT0, 16
.set MT1, 16
.set DepthU, 64
.set BpeA, 2
.set BpeALog2, 1
.set BpeB, 2
.set BpeBLog2, 1
.set BpeAGR, 2
.set BpeAGRLog2, 1
.set BpeBGR, 2
.set BpeBGRLog2, 1
/* Number of elements to shift-left SRD */
.set SrdShiftLeftA, 2
.set SrdShiftLeftB, 1
/* 2GB limit - set offsets to -1 to exceed this and clamp */
.set BufferLimit, 0xffffffff
.set BufferOOB, 0x80000000

/******************************************/
/* Bits 127:96 of SRD.                    */
/* hex: 0x00020000                        */
/* dst_sel_x (3b): 0                      */
/* dst_sel_y (3b): 0                      */
/* dst_sel_z (3b): 0                      */
/* dst_sel_w (3b): 0                      */
/* num_format (3b): 0                     */
/* data_format (4b): 4                    */
/* user_vm_enable (1b): 0                 */
/* user_vm_mode (1b): 0                   */
/* index_stride (2b): 0                   */
/* add_tid_enable (1b): 0                 */
/* _unusedA (3b): 0                       */
/* nv (1b): 0                             */
/* _unusedB (2b): 0                       */
/* type (2b): 0                           */
/******************************************/
.set Srd127_96, 0x10020000 //0x00020000 //0x30004000 // 0x31004000

/* DUMP SGPR vgprSerial */
.macro DUMP_SGPR sgprV:req
    s_mov_b32 s[sgprSrdD+0], s[sgprAddressD+0]         // init SRD base address (lower)
    s_mov_b32 s[sgprSrdD+1], s[sgprAddressD+1]         // init SRD base address (upper) + other fields
    s_mov_b32 s[sgprSrdD+2], 0x80000000                // 0x80000000        
    s_mov_b32 s[sgprSrdD+3], Srd127_96                 // Set bits 127_96 in post-loop SRD
    s_and_b32       s[sgprSrdD+2],      s[sgprSrdD+2],   0xffff
    s_or_b32        s[sgprSrdD+2],      s[sgprSrdD+2],   0x00040000
    v_mov_b32 v16, s[\sgprV]
    v_and_b32 v1, 31, v[vgprSerial]
    v_lshlrev_b32 v1, 2, v1
    buffer_store_b32 v16, v1, s[sgprSrdD:sgprSrdD+3], null offen offset:0
    s_waitcnt vmcnt(0)
    s_endpgm
.endm

/* DUMP VGPR vgprSerial */
.macro DUMP_VGPR vgprV:req
    s_mov_b32 s[sgprSrdD+0], s[sgprAddressD+0]         // init SRD base address (lower)
    s_mov_b32 s[sgprSrdD+1], s[sgprAddressD+1]         // init SRD base address (upper) + other fields
    s_mov_b32 s[sgprSrdD+2], 0x80000000                // 0x80000000        
    s_mov_b32 s[sgprSrdD+3], Srd127_96                 // Set bits 127_96 in post-loop SRD
    s_and_b32       s[sgprSrdD+2],      s[sgprSrdD+2],   0xffff
    s_or_b32        s[sgprSrdD+2],      s[sgprSrdD+2],   0x00040000
    v_and_b32 v1, 31, v[vgprSerial]
    v_lshlrev_b32 v1, 2, v1
    buffer_store_b32 v[\vgprV], v1, s[sgprSrdD:sgprSrdD+3], null offen offset:0
    s_waitcnt vmcnt(0)
    s_endpgm
.endm

/* Global Offset A */
.macro GLOBAL_OFFSET_A vgprAddr:req vgprOffset0I:req vgprOffsetL:req vgprTmp:req
    v_mul_lo_u32 v[\vgprTmp+0] s[sgprStrideAL] v[\vgprOffsetL] // mul d1 lower
    v_add_co_u32 v[\vgprAddr+0] vcc_lo v[\vgprOffset0I] v[\vgprTmp+0] // accumulate K lower
    v_add_nc_u32 v[\vgprAddr+0] 0x2 v[\vgprAddr+0]   // add prepad for pointer shift
    v_lshlrev_b32 v[\vgprAddr+0] 0x1 v[\vgprAddr+0]  // offset *= bytes/element
.endm

/* Global Offset B */
.macro GLOBAL_OFFSET_B vgprAddr:req vgprOffsetL:req vgprOffset1J:req vgprTmp:req
    v_mul_lo_u32 v[\vgprTmp+0] s[sgprStrideB1J] v[\vgprOffset1J] // mul d1 lower
    v_add_co_u32 v[\vgprAddr+0] vcc_lo v[\vgprOffsetL] v[\vgprTmp+0] // accumulate K lower
    v_add_nc_u32 v[\vgprAddr+0] 0x1 v[\vgprAddr+0]   // add prepad for pointer shift
    v_lshlrev_b32 v[\vgprAddr+0] 0x1 v[\vgprAddr+0]  // offset *= bytes/element
.endm

/* Dynamic Scalar Divide: vQuotient=vDividend/vDivisor; vRemainder=vDividend%vDivisor; */
.macro DYNAMIC_VECTOR_DIVIDE vQuotient vRemainder vDividend vDivisor vTmp0 vTmp1 sTmp
    v_cvt_f32_u32 v[\vQuotient] v[\vDivisor]
    v_rcp_f32 v[\vQuotient] v[\vQuotient]
    v_mul_f32 v[\vQuotient] 0x4f800000 v[\vQuotient]
    v_cvt_u32_f32 v[\vQuotient] v[\vQuotient]
    v_mul_lo_u32 v[\vRemainder] v[\vDivisor] v[\vQuotient]
    v_mul_hi_u32 v[\vTmp0] v[\vDivisor] v[\vQuotient]
    v_sub_co_u32 v[\vTmp1] vcc_lo 0x0 v[\vRemainder]
    v_cmp_ne_i32 s[\sTmp] 0x0 v[\vTmp0]
    v_cndmask_b32 v[\vRemainder] v[\vTmp1] v[\vRemainder] s[\sTmp]
    v_mul_hi_u32 v[\vRemainder] v[\vRemainder] v[\vQuotient]
    v_sub_co_u32 v[\vTmp0] vcc_lo v[\vQuotient] v[\vRemainder]
    v_add_co_u32 v[\vQuotient] vcc_lo v[\vQuotient] v[\vRemainder]
    v_cndmask_b32 v[\vQuotient] v[\vQuotient] v[\vTmp0] s[\sTmp]
    v_mul_hi_u32 v[\vQuotient] v[\vQuotient] v[\vDividend]
    v_mul_lo_u32 v[\vRemainder] v[\vQuotient] v[\vDivisor]
    v_sub_co_u32 v[\vTmp0] vcc_lo v[\vDividend] v[\vRemainder]
    v_cmp_ge_u32 s[\sTmp] v[\vDividend] v[\vRemainder]
    v_add_co_u32 v[\vRemainder] vcc_lo 0x1 v[\vQuotient]
    v_add_co_u32 v[\vTmp1] vcc_lo -1 v[\vQuotient]
    v_cmp_le_u32 vcc_lo v[\vDivisor] v[\vTmp0]
    s_and_b32 vcc_lo s[\sTmp] vcc_lo
    v_cndmask_b32 v[\vQuotient] v[\vQuotient] v[\vRemainder] vcc_lo
    v_cndmask_b32 v[\vQuotient] v[\vTmp1] v[\vQuotient] s[\sTmp]
    v_cmp_ne_i32 vcc_lo 0x0 v[\vDivisor]
    v_cndmask_b32 v[\vQuotient] -1 v[\vQuotient] vcc_lo // final result
    v_mul_lo_u32 v[\vRemainder] v[\vQuotient] v[\vDivisor]
    v_sub_co_u32 v[\vRemainder] vcc_lo v[\vDividend] v[\vRemainder] // final result
.endm

/******************************************/
/* Allocate Resources                     */
/******************************************/

/* Load Kernel Args */
s_load_b512 s[20:35], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x0
s_load_b256 s[36:43], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x40
s_load_b64 s[44:45], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x60
s_load_b32 s46, s[sgprKernArgAddress:sgprKernArgAddress+1], 0x68
s_mov_b32 m0, 0x3200                               // LDS clamp at 12800 bytes
v_mov_b32 v[vgprSerial], v0                        // thread serial id
s_mov_b32 vcc_hi, 0                                // Ensure hi bits are zero
/* init: add vgpr [10...59) to pool */
/* init: add vgpr [0...8) to pool */
/* init: add agpr [0...0) to pool */
s_waitcnt 0
/******************************************/
/* Local Read Addresses                   */
/******************************************/
DUMP_SGPR sgprWorkGroup0

/* local read addresses: tile assignments a/b */
/* lr0I */
v_and_b32 v1, 31, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(32)
v_and_b32 v0, 15, v1                               // 1. N offset: nIdx = wtid % MI_N(16)
                                                   // 1. N offset: nOffset = nIdx * nStride(1) (multiplier is 1, do nothing)
v_lshrrev_b32 v1, 4, v1                            // 2. block offset: bnIdx = wtid / dividedForBlkId(16)
v_and_b32 v1, 0, v1                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v1, 0x4, v1                          // 2. block offset: bnOffset = bnIdx * strideBlock(16)
v_add_nc_u32 v0, v1, v0                            // 3. add N and block offset: bnOffset = block and N offset
                                                   // 4. apply VectorWidth: bnOffset = bnOffset * vw(1) (multiplier is 1, do nothing)
v_and_b32 v1, 31, v[vgprSerial]                    // 5. thread id in wave: wtid = tid % wavelength(32)
v_lshrrev_b32 v1, 4, v1                            // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshlrev_b32 v1, 0x8, v1                          // 5. K offset: lrKOffset = kIdx * mStride(256)
v_add_nc_u32 v0, v1, v0                            // 6. offset in wave: lrOffset = bnOffset + lrKOffset
/* lr1J */
v_and_b32 v2, 31, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(32)
v_and_b32 v1, 15, v2                               // 1. N offset: nIdx = wtid % MI_N(16)
s_mov_b32 s17, 0x50                                // 1. N offset: nOffset = nIdx * nStride(80)
v_mul_lo_u32 v1, s17, v1                           // 1. N offset: nOffset = nIdx * nStride(80)
v_lshrrev_b32 v2, 4, v2                            // 2. block offset: bnIdx = wtid / dividedForBlkId(16)
v_and_b32 v2, 0, v2                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
s_mov_b32 s17, 0x500                               // 2. block offset: bnOffset = bnIdx * strideBlock(1280)
v_mul_lo_u32 v2, s17, v2                           // 2. block offset: bnOffset = bnIdx * strideBlock(1280)
v_add_nc_u32 v1, v2, v1                            // 3. add N and block offset: bnOffset = block and N offset
                                                   // 4. apply VectorWidth: bnOffset = bnOffset * vw(1) (multiplier is 1, do nothing)
v_and_b32 v2, 31, v[vgprSerial]                    // 5. thread id in wave: wtid = tid % wavelength(32)
v_lshrrev_b32 v2, 4, v2                            // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshlrev_b32 v2, 0x4, v2                          // 5. K offset: lrKOffset = kIdx * mStride(16)
v_add_nc_u32 v1, v2, v1                            // 6. offset in wave: lrOffset = bnOffset + lrKOffset

/* local read addresses: final offsets a */
v_lshrrev_b32 v2, 5, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(32)
s_mov_b32 s17, 32                                  // LSU offset: stride = MT0(16) + PAD0(16)
v_mul_lo_u32 v2, s17, v2                           // LSU offset: lsuoffset = sgid*(MT0+PAD)
v_add_lshl_u32 v[vgprLocalReadAddrA], v2, v0, 0x1  // Final Offset: offset = (lro0*VW+lsuoffset)*bpe

/* local read addresses: final offsets b */
v_lshrrev_b32 v0, 5, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(32)
                                                   // LSU offset: stride = MT1(16) + PAD1(16) (dup assign opt.)
v_mul_lo_u32 v0, s17, v0                           // LSU offset: lsuoffset = sgid*(MT1+PAD)
v_add_lshl_u32 v[vgprLocalReadAddrB], v0, v1, 0x1  // Final Offset: offset = (lro1*VW+lsuoffset)*bpe

/* local read addresses: declare addresses a */
/* N/A */

/* local read addresses: declare addresses b */
v_add_co_u32 v[vgprLocalReadAddrB+0], vcc_lo, 0x800, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)

/******************************************/
/* Local Write Addresses                  */
/******************************************/
/* LVCA = 8 */
/* v1 = A-unroll = serial/LVCA */
v_lshrrev_b32 v1, 3, v[vgprSerial]                 // v1 = v[vgprSerial] / 8
v_and_b32 v0, 7, v[vgprSerial]                     // v0 = v[vgprSerial] % 8
/* tile *= glvw */
v_lshlrev_b32 v0, 0x1, v0                          // v0 = v0 * 2
/* LVCB = 32 */
/* v3 = B-unroll = serial%LVCB */
v_lshrrev_b32 v2, 5, v[vgprSerial]                 // v2 = v[vgprSerial] / 32
v_and_b32 v3, 31, v[vgprSerial]                    // v3 = v[vgprSerial] % 32
/* lwaUnrollAssignmentA = v1 */
/* lwaUnrollAssignmentB = v3 */

/* local write addresses: first offset a */
v_mul_u32_u24 v[vgprLocalWriteAddrA], 0x20, v1     // lwAL**(MTA + PAD)
v_add_lshl_u32 v[vgprLocalWriteAddrA], v0, v[vgprLocalWriteAddrA], 0x1 // lwFOA = (lwAA + lwAL*(MT0I+PAD))*bpe

/* local write addresses: first offset b */
v_mul_u32_u24 v[vgprLocalWriteAddrB], 0x50, v2     // lwBL**(DepthU_Compute + PAD)
v_add_lshl_u32 v[vgprLocalWriteAddrB], v3, v[vgprLocalWriteAddrB], 0x1 // lwFOB = (lwBB + lwBL*(DepthU+PAD))*bpe
v_add_co_u32 v[vgprLocalWriteAddrB], vcc_lo, 0x800, v[vgprLocalWriteAddrB] // lwFOB = lwB1J + lwBL*MT1J + LDS_OFFSET_B=1024*2
s_waitcnt lgkmcnt(0)                               // wait for 108 bytes of kern args
label_stop:
v_mov_b32 v6, MT0                                  // set MT0 into sgpr
v_mov_b32 v5, s[sgprSizesFree+0]                   // set Free0 size
v_cvt_f32_u32 v4, v6                               // v4 = ceil(v5 / v6)
v_rcp_iflag_f32 v4, v4                             // v4 = ceil(v5 / v6)
v_cvt_f32_u32 v7, v5                               // v4 = ceil(v5 / v6)
v_mul_f32 v4, v4, v7                               // v4 = ceil(v5 / v6)
v_cvt_u32_f32 v4, v4                               // v4 = ceil(v5 / v6)
v_mul_u32_u24 v7, v4, v6                           // v4 = ceil(v5 / v6)
v_sub_nc_u32 v7, v5, v7                            // v4 = ceil(v5 / v6)
v_cmp_ne_u32 vcc_lo, v7, 0                         // v4 = ceil(v5 / v6)
v_add_co_ci_u32 v4, vcc_lo, v4, 0, vcc_lo          // ceil
v_mov_b32 v6, MT1                                  // set MT1 into sgpr
v_mov_b32 v5, s[sgprSizesFree+1]                   // set Free1 size
v_readfirstlane_b32 s[sgprNumWorkGroups0], v4      // set back to numWorkGroup0
v_cvt_f32_u32 v4, v6                               // v4 = ceil(v5 / v6)
v_rcp_iflag_f32 v4, v4                             // v4 = ceil(v5 / v6)
v_cvt_f32_u32 v7, v5                               // v4 = ceil(v5 / v6)
v_mul_f32 v4, v4, v7                               // v4 = ceil(v5 / v6)
v_cvt_u32_f32 v4, v4                               // v4 = ceil(v5 / v6)
v_mul_u32_u24 v7, v4, v6                           // v4 = ceil(v5 / v6)
v_sub_nc_u32 v7, v5, v7                            // v4 = ceil(v5 / v6)
v_cmp_ne_u32 vcc_lo, v7, 0                         // v4 = ceil(v5 / v6)
v_add_co_ci_u32 v4, vcc_lo, v4, 0, vcc_lo          // ceil
v_readfirstlane_b32 s[sgprNumWorkGroups1], v4      // set back to numWorkGroup1
s_sub_u32 s[sgprAddressA+0], s[sgprAddressA+0], 4  // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprAddressA+1], s[sgprAddressA+1], 0 // pre-pad to make room for possible pointer shift
s_sub_u32 s[sgprAddressB+0], s[sgprAddressB+0], 2  // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprAddressB+1], s[sgprAddressB+1], 0 // pre-pad to make room for possible pointer shift

/* Short circuit condition if Alpha == 0, then sumDims=0 */
v_cmp_eq_f32 vcc_lo, s[sgprAlpha], 0.0             // s[Alpha] == 0.0f ?
s_cbranch_vccz label_AlphaNonZero                  // branch if s[Alpha] != 0
s_mov_b32 s[sgprSizesSum+0], 0x0                   // Set summation dim=0 if Alpha == 0
label_AlphaNonZero:

/******************************************/
/* Begin setupNewTile                     */
/******************************************/

/* global read addresses: work-group */
/* graWorkGroup mapping */
s_mov_b32 s76, 0x71c71c8L                          // magic number for WGM==18
s_mul_hi_u32 s73, s[sgprWorkGroup1], s76           // s_magic mul
s_mul_i32 s72, s[sgprWorkGroup1], s76              // s_magic mul
s_lshr_b64 s[72:73], s[72:73], 31                  // sMagicDiv
s_mul_i32 s73, s72, 18                             // quotient * non-magic divisor
s_sub_u32 s73, s[sgprWorkGroup1], s73              // WorkGroup1=remainder
s_mul_i32 s73, s73, s[sgprNumWorkGroups0]          // (wg1 % WGM)*nwg0
s_add_u32 s73, s73, s[sgprWorkGroup0]              // wgSerial = wg0 + (wg1 % WGM)*nwg0
s_mul_hi_u32 s75, s[sgprNumWorkGroups1], s76       // s_magic mul
s_mul_i32 s74, s[sgprNumWorkGroups1], s76          // s_magic mul
s_lshr_b64 s[74:75], s[74:75], 31                  // sMagicDiv
s_mul_i32 s75, 18, s74                             // quotient * non-magic divisor
s_sub_u32 s76, s[sgprNumWorkGroups1], s75          // WorkGroup1=remainder
s_cmp_eq_u32 s76, 0                                // remainder == 0 ?
s_cmov_b32 s76, 18                                 // remainder = WGM if remainder == 0
s_cmp_ge_u32 s72, s74                              // blockId >= numFullBlocks ?
s_cselect_b32 s74, s76, 18
v_cvt_f32_u32 v4, s74                              // s[sgprWorkGroup0] = s73 / s74
v_rcp_iflag_f32 v4, v4                             // s[sgprWorkGroup0] = s73 / s74
v_cvt_f32_u32 v5, s73                              // s[sgprWorkGroup0] = s73 / s74
v_mul_f32 v4, v4, v5                               // s[sgprWorkGroup0] = s73 / s74
v_cvt_u32_f32 v4, v4                               // s[sgprWorkGroup0] = s73 / s74
v_mul_u32_u24 v5, v4, s74                          // s[sgprWorkGroup0] = s73 / s74
v_sub_nc_u32 v5, s73, v5                           // s[sgprWorkGroup0] = s73 / s74
v_cmp_eq_u32 vcc_lo, v5, s74                       // s[sgprWorkGroup0] = s73 / s74
s_mov_b32 exec_lo vcc_lo                           // s[sgprWorkGroup0] = s73 / s74
v_add_nc_u32 v4, 1, v4                             // s[sgprWorkGroup0] = s73 / s74
v_mov_b32 v5, 0                                    // s[sgprWorkGroup1] = s73 % s74
s_mov_b32 exec_lo, -1                              // s[sgprWorkGroup0] = s73 / s74
v_readfirstlane_b32 s[sgprWorkGroup0], v4
v_readfirstlane_b32 s[sgprWorkGroup1], v5
s_mul_i32 s72, s72, 18                             // blockId * WGM
s_add_u32 s[sgprWorkGroup1], s[sgprWorkGroup1], s72 // wg1 += blockId * WGM

/* global read addresses: tile offset assignment a */
/* graTileAssignmentA = v0 */

/* global read addresses: tile offset assignment metadata */
/* calculate metadata gra tile assignment */
v_and_b32 v5, 31, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(32)
v_and_b32 v5, 15, v5                               // 1. tile offset: nIdx = wtid % MI_N(16)
v_mov_b32 v[vgprGlobalReadOffsetMetadata], v5      // 2. tile coord = tileOffset

/* global read addresses: tile offset assignment b */
/* graTileAssignmentB = v2 */

/* global read addresses: unroll assignment a */
/* v1 */

/* global read addresses: unroll assignment b */
/* v3 */

/* global read addresses: other free assignments */
/* s[sgprWorkGroup2] */

/* global read addresses: tile offsets a */
v_mov_b32 v4, v0                                   // groA0I_0

/* global read addresses: tile offsets b */
v_mov_b32 v10, v2                                  // groB1J_0
v_add_co_u32 v11, vcc_lo, 1, v10                   // groB1J_1 += LSPB
v_add_co_u32 v12, vcc_lo, 1, v11                   // groB1J_2 += LSPB
v_add_co_u32 v13, vcc_lo, 1, v12                   // groB1J_3 += LSPB
v_add_co_u32 v14, vcc_lo, 1, v13                   // groB1J_4 += LSPB
v_add_co_u32 v15, vcc_lo, 1, v14                   // groB1J_5 += LSPB
v_add_co_u32 v16, vcc_lo, 1, v15                   // groB1J_6 += LSPB
v_add_co_u32 v17, vcc_lo, 1, v16                   // groB1J_7 += LSPB
v_add_co_u32 v18, vcc_lo, 1, v17                   // groB1J_8 += LSPB
v_add_co_u32 v19, vcc_lo, 1, v18                   // groB1J_9 += LSPB
v_add_co_u32 v20, vcc_lo, 1, v19                   // groB1J_10 += LSPB
v_add_co_u32 v21, vcc_lo, 1, v20                   // groB1J_11 += LSPB
v_add_co_u32 v22, vcc_lo, 1, v21                   // groB1J_12 += LSPB
v_add_co_u32 v23, vcc_lo, 1, v22                   // groB1J_13 += LSPB
v_add_co_u32 v24, vcc_lo, 1, v23                   // groB1J_14 += LSPB
v_add_co_u32 v25, vcc_lo, 1, v24                   // groB1J_15 += LSPB

/* global read addresses: unroll offsets a */
v_mov_b32 v26, v1                                  // groAL_0
v_add_co_u32 v27, vcc_lo, 4, v26                   // groAL_1 + LSPA
v_add_co_u32 v28, vcc_lo, 4, v27                   // groAL_2 + LSPA
v_add_co_u32 v29, vcc_lo, 4, v28                   // groAL_3 + LSPA
v_add_co_u32 v30, vcc_lo, 4, v29                   // groAL_4 + LSPA
v_add_co_u32 v31, vcc_lo, 4, v30                   // groAL_5 + LSPA
v_add_co_u32 v32, vcc_lo, 4, v31                   // groAL_6 + LSPA
v_add_co_u32 v33, vcc_lo, 4, v32                   // groAL_7 + LSPA

/* global read addresses: unroll offsets b */
v_mov_b32 v5, v3                                   // groBL_0
v_add_co_u32 v6, vcc_lo, 32, v5                    // groBL_1 + LSCB

/* global read addresses: shift a */
s_mul_i32 s71, s[sgprWorkGroup0], 16               // WorkGroup[01] * MT
s_sub_u32 s71, s[sgprSizeI], s71                   // edge = Size0I - WG*MT
DUMP_SGPR sgprSizeI
s_sub_i32 s71, s71, 2                              // edge -= margin(2)
DUMP_SGPR 71
v_mov_b32 v7, s71                                  // edge vgpr = Size0I- WG*MT - margin(2)
v_min_i32 v4, v7, v4                               // offset = (offset < edge) ? offset(v4) : edge(v7)

/* global read addresses: shift metadata */
s_mul_i32 s72, s[sgprWorkGroup0], 16               // WorkGroup[01] * MT
s_sub_i32 s72, s[sgprSizeI], s72                   // edge = Size0I - WG*MT
s_and_b32 s73, s72, 0x1                            // edge size & (glvw-1)
s_sub_u32 s73, 0x2, s73                            // shift size = glvw - (edge size & (glvw-1))
s_andn2_b32 s72, s72, 0x1                          // edgeCoord = edge & !(glvw-1)
v_cmp_le_i32 s74, s72, v[vgprGlobalReadOffsetMetadata+0] // edgeCoord <= coord
v_sub_nc_i32 v7, v[vgprGlobalReadOffsetMetadata+0], s73 // shiftedCoord = coord - shift size
v_cndmask_b32 v[vgprGlobalReadOffsetMetadata+0], v[vgprGlobalReadOffsetMetadata+0], v7, s74 // coord =  (cond) ? shifted coord : ori coord


/* global read addresses: final offsets a */
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+0,  4, 26, 34 // gROA_0_0_0_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+1,  4, 27, 34 // gROA_0_0_1_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+2,  4, 28, 34 // gROA_0_0_2_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+3,  4, 29, 34 // gROA_0_0_3_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+4,  4, 30, 34 // gROA_0_0_4_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+5,  4, 31, 34 // gROA_0_0_5_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+6,  4, 32, 34 // gROA_0_0_6_0
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+7,  4, 33, 34 // gROA_0_0_7_0
/* global read addresses: final offsets metadata */

/* calculate metadata gra final offset */
v_and_b32 v0, 31, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(32)
v_lshrrev_b32 v0, 4, v0                            // 1. unroll offset: kIdx = wtid / (MIN(16) )
v_lshlrev_b32 v0, 0x4, v0                          // 1. unroll offset: grKOffset = kIdx * mStride(16)
v_mul_lo_u32 v[vgprGlobalReadOffsetMetadata+0], v[vgprGlobalReadOffsetMetadata+0], s[sgprSizeL] // 2. tile offset: tile coord * sizeL
v_add_nc_u32 v[vgprGlobalReadOffsetMetadata+0], v[vgprGlobalReadOffsetMetadata+0], v0 // 2. final global read offset: fgrOffset = tile Offset + unroll Offset
v_lshrrev_b32 v[vgprGlobalReadOffsetMetadata+0], 3, v[vgprGlobalReadOffsetMetadata+0] //   3. bytes offset : bnIdx = global read elememt offset / 8
label_graFinalMeta:

/* global read addresses: final offsets b */
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+0,  5, 10, 26 // gROB_0_0_0_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+1,  6, 10, 26 // gROB_1_0_0_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+2,  5, 11, 26 // gROB_0_0_1_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+3,  6, 11, 26 // gROB_1_0_1_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+4,  5, 12, 26 // gROB_0_0_2_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+5,  6, 12, 26 // gROB_1_0_2_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+6,  5, 13, 26 // gROB_0_0_3_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+7,  6, 13, 26 // gROB_1_0_3_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+8,  5, 14, 26 // gROB_0_0_4_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+9,  6, 14, 26 // gROB_1_0_4_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+10,  5, 15, 26 // gROB_0_0_5_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+11,  6, 15, 26 // gROB_1_0_5_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+12,  5, 16, 26 // gROB_0_0_6_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+13,  6, 16, 26 // gROB_1_0_6_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+14,  5, 17, 26 // gROB_0_0_7_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+15,  6, 17, 26 // gROB_1_0_7_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+16,  5, 18, 26 // gROB_0_0_8_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+17,  6, 18, 26 // gROB_1_0_8_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+18,  5, 19, 26 // gROB_0_0_9_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+19,  6, 19, 26 // gROB_1_0_9_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+20,  5, 20, 26 // gROB_0_0_10_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+21,  6, 20, 26 // gROB_1_0_10_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+22,  5, 21, 26 // gROB_0_0_11_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+23,  6, 21, 26 // gROB_1_0_11_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+24,  5, 22, 26 // gROB_0_0_12_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+25,  6, 22, 26 // gROB_1_0_12_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+26,  5, 23, 26 // gROB_0_0_13_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+27,  6, 23, 26 // gROB_1_0_13_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+28,  5, 24, 26 // gROB_0_0_14_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+29,  6, 24, 26 // gROB_1_0_14_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+30,  5, 25, 26 // gROB_0_0_15_0
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+31,  6, 25, 26 // gROB_1_0_15_0

/* global read addresses: addresses a */
/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s75, s[sgprWorkGroup0], 16            // WorkGroup[01] * MT
s_mul_i32 s74, s[sgprWorkGroup0], 16               // WorkGroup[01] * MT
s_mov_b32 s76, 1                                   // Init tensor size
s_mov_b32 s77, 0                                   // init tensor size
s_sub_u32 s72, s[sgprSizeI], 1                     // (size-1)
s_mul_hi_u32 s73, constStrideA0I, s72              // stride x (size-1)
s_mul_i32 s72, constStrideA0I, s72                 // stride x (size-1)
s_add_u32 s76, s76, s72                            // sum tensor size
s_addc_u32 s77, s77, s73                           // sum tensor size
s_sub_u32 s72, s[sgprSizeL], 1                     // (size-1)
s_mul_hi_u32 s73, s[sgprStrideAL], s72             // stride x (size-1)
s_mul_i32 s72, s[sgprStrideAL], s72                // stride x (size-1)
s_add_u32 s76, s76, s72                            // sum tensor size
s_addc_u32 s77, s77, s73                           // sum tensor size
s_sub_u32 s[sgprShadowLimitA+0], s76, s74          // sub tileStart
s_subb_u32 s[sgprShadowLimitA+1], s77, s75         // sub tileStart
s_lshl_b64 s[sgprShadowLimitA:sgprShadowLimitA+1], s[sgprShadowLimitA:sgprShadowLimitA+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], 4 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_hi_u32 s73, s[sgprStrideAK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s72, s[sgprStrideAK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s74, s74, s72                            // accum wg term to tilestart
s_addc_u32 s75, s75, s73                           // accum wg term to tilestart
s_lshl_b64 s[74:75], s[74:75], 0x1                 // tileStart *= BPE
s_add_u32 s[sgprSrdA+0], s[sgprAddressA+0], s74    // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdA+1], s[sgprAddressA+1], s75   // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdA+3], Srd127_96                 // Set bits 127_96 in SRD
s_mul_hi_u32 s75, s[sgprWorkGroup0], 16            // WorkGroup[01] * MT
s_mul_i32 s74, s[sgprWorkGroup0], 16               // WorkGroup[01] * MT
s_mul_hi_u32 s75, s74, s[sgprSizeL]                // scaled tile-offset by Summation size
s_mul_i32 s74, s74, s[sgprSizeL]                   // scaled tile-offset by Summation size
s_mul_hi_u32 s77, s[sgprSizeI], s[sgprSizeL]       // calculate metadata tensor size
s_mul_i32 s76, s[sgprSizeI], s[sgprSizeL]          // calculate metadata tensor size
s_cmp_eq_u32 s[sgprStrideAK], 0                    // broadcast A?
s_cselect_b32 s77, 0x1, s[sgprSizeK]               // set batchSize as 1 for boardcast A
s_mul_hi_u32 s73, s76, s77                         // calculate metadata tensor size
s_mul_i32 s72, s76, s77                            // calculate metadata tensor size
s_cselect_b32 s77, 0x0, s[sgprWorkGroup2]          // set batchIndex as 0 for boardcast A
s_sub_u32 s[sgprShadowLimitMetadata], s72, s74     // sub tileStart
s_subb_u32 s[sgprShadowLimitMetadata+1], s73, s75  // sub tileStart
s_lshr_b64 s[sgprShadowLimitMetadata:sgprShadowLimitMetadata+1], s[sgprShadowLimitMetadata:sgprShadowLimitMetadata+1], 0x3 // Set limit to use bytes
s_cmp_eq_u32 s[sgprShadowLimitMetadata+1], 0       // are we within 2^32?
s_cselect_b32 s[sgprSrdMetadata+2], s[sgprShadowLimitMetadata], BufferLimit // Move shadow to real if we are within 2^32
s_mul_hi_u32 s73, s76, s77                         // block offset*WG
s_mul_i32 s72, s76, s77                            // block offset*WG
s_add_u32 s74, s74, s72                            // accum wg term to tilestart
s_addc_u32 s75, s75, s73                           // accum wg term to tilestart
s_lshr_b64 s[74:75], s[74:75], 0x3                 // Set limit to use bytes
s_add_u32 s[sgprSrdMetadata+0], s[sgprAddressMetadata+0], s74 // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdMetadata+1], s[sgprAddressMetadata+1], s75 // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdMetadata+3], Srd127_96          // Set bits 127_96 in SRD

/* global read addresses: addresses b */
/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s75, s[sgprWorkGroup1], 16            // WorkGroup[01] * MT
s_mul_i32 s74, s[sgprWorkGroup1], 16               // WorkGroup[01] * MT
s_mul_hi_u32 s75, s74, s[sgprStrideB1J]            // tlu=0, scaled tile-offset by stride
s_mul_i32 s74, s74, s[sgprStrideB1J]               // tlu=0, scaled tile-offset by stride
s_mov_b32 s76, 1                                   // Init tensor size
s_mov_b32 s77, 0                                   // init tensor size
s_sub_u32 s72, s[sgprSizeL], 1                     // (size-1)
s_mul_hi_u32 s73, constStrideBL, s72               // stride x (size-1)
s_mul_i32 s72, constStrideBL, s72                  // stride x (size-1)
s_add_u32 s76, s76, s72                            // sum tensor size
s_addc_u32 s77, s77, s73                           // sum tensor size
s_sub_u32 s72, s[sgprSizeJ], 1                     // (size-1)
s_mul_hi_u32 s73, s[sgprStrideB1J], s72            // stride x (size-1)
s_mul_i32 s72, s[sgprStrideB1J], s72               // stride x (size-1)
s_add_u32 s76, s76, s72                            // sum tensor size
s_addc_u32 s77, s77, s73                           // sum tensor size
s_sub_u32 s[sgprShadowLimitB+0], s76, s74          // sub tileStart
s_subb_u32 s[sgprShadowLimitB+1], s77, s75         // sub tileStart
s_lshl_b64 s[sgprShadowLimitB:sgprShadowLimitB+1], s[sgprShadowLimitB:sgprShadowLimitB+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], 2 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_hi_u32 s73, s[sgprStrideBK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s72, s[sgprStrideBK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s74, s74, s72                            // accum wg term to tilestart
s_addc_u32 s75, s75, s73                           // accum wg term to tilestart
s_lshl_b64 s[74:75], s[74:75], 0x1                 // tileStart *= BPE
s_add_u32 s[sgprSrdB+0], s[sgprAddressB+0], s74    // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdB+1], s[sgprAddressB+1], s75   // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdB+3], Srd127_96                 // Set bits 127_96 in SRD

/* global read addresses: increments a */
s_mul_i32 s71, s[sgprGSU], DepthU*BpeAGR
s_lshr_b32 s71, s71, 0x1
s_mul_i32 s[sgprGlobalReadIncsA+0], s71, s[sgprStrideAL] // incrA unrollIdx)

/* global read addresses: increments b */
s_mul_i32 s71, s[sgprGSU], DepthU*BpeBGR
s_mov_b32 s[sgprGlobalReadIncsB+0], s71            // incrB (unrollIdx)
/* declare loop num iterations */
s_lshr_b32 s[sgprLoopCounterL], s[sgprSizesSum+0], 6 // s[sgprLoopCounterL] = s[sgprSizesSum+0] / 64
s_mov_b32 s[sgprOrigLoopCounter], s[sgprLoopCounterL] // copy loop counter
s_mov_b32 s72, 0x20                                // init staggerU
label_beginStaggerUIter:
s_lshl_b32 s73, s72, 1                             // shift by StaggerUStride
s_cmp_ge_u32 s[sgprOrigLoopCounter], s73           // loopCount >= current shift Count
s_cbranch_scc1 label_endStaggerUIter               // jump to end
s_lshr_b32 s72, s72, 1                             // step down to smaller stagger
s_branch label_beginStaggerUIter                   // jump to begin
label_endStaggerUIter:
s_sub_u32 s73, s72, 1                              // staggerU mask
s_cmp_ge_u32 s72, 1                                // if current staggerU >= 1
s_cselect_b32 s[sgprStaggerUIter], s73, 0          // set Mask
s_and_b32 s[sgprStaggerUIter], s[sgprStaggerUIter], s[sgprWorkGroup0] // Compute actual stagger start for this tile
s_lshl_b32 s[sgprStaggerUIter], s[sgprStaggerUIter], 1 // shift by StaggerUStride

/* SRDs += (StaggerUIter) * GlobalReadIncsA+0 */
s_mul_hi_i32 s73, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_i32 s72, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_hi_i32 s[sgprWrapUA+1], s[sgprLoopCounterL], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUA+0], s[sgprLoopCounterL], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0], s[sgprWrapUA+0] // remove one iteration
s_subb_u32 s[sgprWrapUA+1], 0, s[sgprWrapUA+1]     // remove one iteration
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32

/* SRDs += (StaggerUIter) * GlobalReadIncsMetadata */
s_mul_i32 s74, 64, s[sgprGSU]
s_lshr_b32 s74, s74, 0x3
s_mul_hi_i32 s73, s[sgprStaggerUIter], s74         //  stagger byte offset of metadata
s_mul_i32 s72, s[sgprStaggerUIter], s74            //  stagger byte offset of metadata
s_mul_hi_i32 s[sgprWrapUMetadata+1], s[sgprLoopCounterL], s74 // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUMetadata+0], s[sgprLoopCounterL], s74 // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUMetadata+0], s74, s[sgprWrapUMetadata+0] //  remove one iteration
s_subb_u32 s[sgprWrapUMetadata+1], 0, s[sgprWrapUMetadata+1] //  remove one iteration
s_add_u32 s[sgprSrdMetadata+0], s[sgprSrdMetadata+0], s72 // gra SRD += incSparse(lower)
s_addc_u32 s[sgprSrdMetadata+1], s[sgprSrdMetadata+1], s73 // gra SRD += incSparse(uppper)
s_sub_u32 s[sgprShadowLimitMetadata+0], s[sgprShadowLimitMetadata+0], s72 // limit -= incSparse(lower)
s_subb_u32 s[sgprShadowLimitMetadata+1], s[sgprShadowLimitMetadata+1], s73 // limit -= incSparse(uppper)
s_cmp_eq_u32 s[sgprShadowLimitMetadata+1], 0       // are we within 2^32?
s_cselect_b32 s[sgprSrdMetadata+2], s[sgprShadowLimitMetadata+0], BufferLimit // Move shadow to real if we are within 2^32

/* SRDs += (StaggerUIter) * GlobalReadIncsB+0 */
s_mul_hi_i32 s73, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_i32 s72, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_hi_i32 s[sgprWrapUB+1], s[sgprLoopCounterL], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUB+0], s[sgprLoopCounterL], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0], s[sgprWrapUB+0] // remove one iteration
s_subb_u32 s[sgprWrapUB+1], 0, s[sgprWrapUB+1]     // remove one iteration
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
s_add_u32 s[sgprStaggerUIter], s[sgprStaggerUIter], 2 // Subtract (PGR-1); StaggerUIter now contains target iteration to wrap
/* local read addresses: init pointers a */

/* localReadInitPointers */
/* local read addresses: init pointers b */

/* localReadInitPointers */
s_and_b32       s[sgprSrdA+2],      s[sgprSrdA+2],   0xffff
s_or_b32        s[sgprSrdA+2],      s[sgprSrdA+2],   0x00040000
s_and_b32       s[sgprSrdB+2],      s[sgprSrdB+2],   0xffff
s_or_b32        s[sgprSrdB+2],      s[sgprSrdB+2],   0x00040000

DUMP_VGPR vgprGlobalReadOffsetB

/* prefetch: global -> local */
s_cmp_eq_u32 s[sgprLoopCounterL], 0                // at last iteration?
s_cbranch_scc1 label_ShadowInitStart               // skip to ShadowInitStart iter b/c numIter==0
buffer_load_b32 v[vgprG2LA+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_0_0
buffer_load_b32 v[vgprG2LA+1], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_1_0
buffer_load_b32 v[vgprG2LA+2], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_2_0
buffer_load_b32 v[vgprG2LA+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_3_0
buffer_load_b32 v[vgprG2LA+4], v[vgprGlobalReadOffsetA+4], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_4_0
buffer_load_b32 v[vgprG2LA+5], v[vgprGlobalReadOffsetA+5], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_5_0
buffer_load_b32 v[vgprG2LA+6], v[vgprGlobalReadOffsetA+6], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_6_0
buffer_load_b32 v[vgprG2LA+7], v[vgprGlobalReadOffsetA+7], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_7_0
buffer_load_d16_b16 v[vgprValuMetadata+4+0], v[vgprGlobalReadOffsetMetadata+0], s[sgprSrdMetadata:sgprSrdMetadata+3], null offen offset:0 // G -> Reg ValuMetadata
buffer_load_d16_b16 v[vgprValuMetadata+4+1], v[vgprGlobalReadOffsetMetadata+0], s[sgprSrdMetadata:sgprSrdMetadata+3], null offen offset:4 // G -> Reg ValuMetadata
buffer_load_d16_b16 v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_0_0
buffer_load_d16_hi_b16 v[vgprG2LB+0], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_0_0
buffer_load_d16_b16 v[vgprG2LB+1], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_1_0
buffer_load_d16_hi_b16 v[vgprG2LB+1], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_1_0
buffer_load_d16_b16 v[vgprG2LB+2], v[vgprGlobalReadOffsetB+4], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_2_0
buffer_load_d16_hi_b16 v[vgprG2LB+2], v[vgprGlobalReadOffsetB+5], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_2_0
buffer_load_d16_b16 v[vgprG2LB+3], v[vgprGlobalReadOffsetB+6], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_3_0
buffer_load_d16_hi_b16 v[vgprG2LB+3], v[vgprGlobalReadOffsetB+7], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_3_0
buffer_load_d16_b16 v[vgprG2LB+4], v[vgprGlobalReadOffsetB+8], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_4_0
buffer_load_d16_hi_b16 v[vgprG2LB+4], v[vgprGlobalReadOffsetB+9], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_4_0
buffer_load_d16_b16 v[vgprG2LB+5], v[vgprGlobalReadOffsetB+10], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_5_0
buffer_load_d16_hi_b16 v[vgprG2LB+5], v[vgprGlobalReadOffsetB+11], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_5_0
buffer_load_d16_b16 v[vgprG2LB+6], v[vgprGlobalReadOffsetB+12], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_6_0
buffer_load_d16_hi_b16 v[vgprG2LB+6], v[vgprGlobalReadOffsetB+13], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_6_0
buffer_load_d16_b16 v[vgprG2LB+7], v[vgprGlobalReadOffsetB+14], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_7_0
buffer_load_d16_hi_b16 v[vgprG2LB+7], v[vgprGlobalReadOffsetB+15], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_7_0
buffer_load_d16_b16 v[vgprG2LB+8], v[vgprGlobalReadOffsetB+16], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_8_0
buffer_load_d16_hi_b16 v[vgprG2LB+8], v[vgprGlobalReadOffsetB+17], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_8_0
buffer_load_d16_b16 v[vgprG2LB+9], v[vgprGlobalReadOffsetB+18], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_9_0
buffer_load_d16_hi_b16 v[vgprG2LB+9], v[vgprGlobalReadOffsetB+19], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_9_0
buffer_load_d16_b16 v[vgprG2LB+10], v[vgprGlobalReadOffsetB+20], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_10_0
buffer_load_d16_hi_b16 v[vgprG2LB+10], v[vgprGlobalReadOffsetB+21], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_10_0
buffer_load_d16_b16 v[vgprG2LB+11], v[vgprGlobalReadOffsetB+22], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_11_0
buffer_load_d16_hi_b16 v[vgprG2LB+11], v[vgprGlobalReadOffsetB+23], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_11_0
buffer_load_d16_b16 v[vgprG2LB+12], v[vgprGlobalReadOffsetB+24], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_12_0
buffer_load_d16_hi_b16 v[vgprG2LB+12], v[vgprGlobalReadOffsetB+25], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_12_0
buffer_load_d16_b16 v[vgprG2LB+13], v[vgprGlobalReadOffsetB+26], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_13_0
buffer_load_d16_hi_b16 v[vgprG2LB+13], v[vgprGlobalReadOffsetB+27], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_13_0
buffer_load_d16_b16 v[vgprG2LB+14], v[vgprGlobalReadOffsetB+28], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_14_0
buffer_load_d16_hi_b16 v[vgprG2LB+14], v[vgprGlobalReadOffsetB+29], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_14_0
buffer_load_d16_b16 v[vgprG2LB+15], v[vgprGlobalReadOffsetB+30], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_15_0
buffer_load_d16_hi_b16 v[vgprG2LB+15], v[vgprGlobalReadOffsetB+31], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_15_0

s_endpgm

/* global read inc A loopL */
s_add_u32 s74, s[sgprLoopCounterL], 1              // remove pf(1)
s_cmp_eq_u32 s[sgprStaggerUIter], s74              // Is this wrapIter? (pf)
s_cselect_b32 s72, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_i32 s75, 64, s[sgprGSU]
s_lshr_b32 s75, s75, 0x3
s_cmp_eq_u32 s[sgprStaggerUIter], s74              // Is this wrapIter? (pf)
s_cselect_b32 s72, s[sgprWrapUMetadata+0], s75     // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUMetadata+1], 0       // incUpper <- ?
s_add_u32 s[sgprSrdMetadata+0], s[sgprSrdMetadata+0], s72 // gra SRD += incSparse(lower)
s_addc_u32 s[sgprSrdMetadata+1], s[sgprSrdMetadata+1], s73 // gra SRD += incSparse(uppper)
s_sub_u32 s[sgprShadowLimitMetadata+0], s[sgprShadowLimitMetadata+0], s72 // limit -= incSparse(lower)
s_subb_u32 s[sgprShadowLimitMetadata+1], s[sgprShadowLimitMetadata+1], s73 // limit -= incSparse(uppper)
s_cmp_eq_u32 s[sgprShadowLimitMetadata+1], 0       // are we within 2^32?
s_cselect_b32 s[sgprSrdMetadata+2], s[sgprShadowLimitMetadata+0], BufferLimit // Move shadow to real if we are within 2^32

/* global read inc B loopL */
s_add_u32 s74, s[sgprLoopCounterL], 1              // remove pf(1)
s_cmp_eq_u32 s[sgprStaggerUIter], s74              // Is this wrapIter? (pf)
s_cselect_b32 s72, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32

/******************************************/
/* End setupNewTile                       */
/******************************************/
label_ShadowInitStart:
s_mov_b32 s[sgprSrdD+0], s[sgprAddressD+0]         // init SRD base address (lower)
s_mov_b32 s[sgprSrdD+1], s[sgprAddressD+1]         // init SRD base address (upper) + other fields
s_mov_b32 s[sgprSrdD+2], 0x80000000                // 0x80000000        
s_mov_b32 s[sgprSrdD+3], Srd127_96                 // Set bits 127_96 in post-loop SRD

s_mov_b32 s[sgprSrdC+0], s[sgprAddressC+0]         // init SRD base address (lower)
s_mov_b32 s[sgprSrdC+1], s[sgprAddressC+1]         // init SRD base address (upper) + other fields
s_mov_b32 s[sgprSrdC+2], 0x80000000
s_mov_b32 s[sgprSrdC+3], Srd127_96                 // Set bits 127_96 in post-loop SRD


s_mul_i32 s74, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
s_mul_hi_u32 s73, s74, s[sgprStrideC1J]            // ScaleC s74 by Stride
s_mul_i32 s72, s74, s[sgprStrideC1J]               // ScaleC s74 by Stride
s_lshl_b64 s[72:73], s[72:73], 2                   // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprAddressC+0], s72    // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprAddressC+1], s73   // add hi to SRD
s_mul_hi_u32 s73, s74, s[sgprStrideD1J]            // ScaleD s74 by Stride
s_mul_i32 s72, s74, s[sgprStrideD1J]               // ScaleD s74 by Stride
s_lshl_b64 s[72:73], s[72:73], 2                   // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprAddressD+0], s72    // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprAddressD+1], s73   // add hi to SRD

s_mul_hi_u32 s73, s[sgprWorkGroup2], s[sgprStrideCK] // ScaleC s[sgprWorkGroup2] by Stride
s_mul_i32 s72, s[sgprWorkGroup2], s[sgprStrideCK]  // ScaleC s[sgprWorkGroup2] by Stride
s_lshl_b64 s[72:73], s[72:73], 2                   // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s72        // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], s73       // add hi to SRD
s_mul_hi_u32 s73, s[sgprWorkGroup2], s[sgprStrideDK] // ScaleD s[sgprWorkGroup2] by Stride
s_mul_i32 s72, s[sgprWorkGroup2], s[sgprStrideDK]  // ScaleD s[sgprWorkGroup2] by Stride
s_lshl_b64 s[72:73], s[72:73], 2                   // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s72        // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s73       // add hi to SRD

s_endpgm
v_mov_b32 v16, 0
v_mov_b32 v2, 0x40490FDB
s_nop 7
buffer_store_b32 v2, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:0
s_waitcnt vmcnt(0)
s_endpgm //mon debug

/* initC: remove ValuC vgpr buffer [0...8) from pool */

/* initC: remove acc vgpr buffer [0...0) from pool */

/* initC: remove ValuA/B vgpr buffer [10...49) from pool */
v_mov_b32 v[vgprValuC+0], 0x0                      // initC
v_mov_b32 v[vgprValuC+1], 0x0                      // initC
v_mov_b32 v[vgprValuC+2], 0x0                      // initC
v_mov_b32 v[vgprValuC+3], 0x0                      // initC
v_mov_b32 v[vgprValuC+4], 0x0                      // initC
v_mov_b32 v[vgprValuC+5], 0x0                      // initC
v_mov_b32 v[vgprValuC+6], 0x0                      // initC
v_mov_b32 v[vgprValuC+7], 0x0                      // initC
s_cmp_eq_u32 s[sgprLoopCounterL], 0                // at last iteration?

/* after InitC, skip to end of prefetch last iter if numIter==0 */
s_cbranch_scc0 label_NoBranch_GGDC1EM3TZMNKQQI_0   // Only branch on scc1
s_getpc_b64 s[72:73]                               // addr of next instr
s_add_i32 s74, label_PrefetchGlobalLastIterEnd, 0x4 // target branch offset
s_add_u32 s72, s72, s74                            // add target branch offset
s_addc_u32 s73, s73, 0                             // add high and carry
s_setpc_b64 s[72:73]                               // branch to label_PrefetchGlobalLastIterEnd
label_NoBranch_GGDC1EM3TZMNKQQI_0:
s_waitcnt vmcnt(0)                                 // 8wait for global read
DUMP_VGPR vgprLocalWriteAddrA
/* local write a */
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+0] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+1] offset:256 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 256
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+2] offset:512 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 512
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+3] offset:768 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 768
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+4] offset:1024 // lwoA_0_0_4_0 = (0*LSCA) + (4*LSPA)(*MT0I+PAD) = 1024
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+5] offset:1280 // lwoA_0_0_5_0 = (0*LSCA) + (5*LSPA)(*MT0I+PAD) = 1280
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+6] offset:1536 // lwoA_0_0_6_0 = (0*LSCA) + (6*LSPA)(*MT0I+PAD) = 1536
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+7] offset:1792 // lwoA_0_0_7_0 = (0*LSCA) + (7*LSPA)(*MT0I+PAD) = 1792
v_mov_b32 v[vgprValuMetadata+0+0], v[vgprValuMetadata+4+0] // copy ValuMetadata from blk2
v_mov_b32 v[vgprValuMetadata+0+1], v[vgprValuMetadata+4+1] // copy ValuMetadata from blk2

/* local write b */
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:64 // lwoB_1_0_0_0 = (1*LSCB)*(MT1J+PAD) + (0*LSPB) = 64
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:160 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 160
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:224 // lwoB_1_0_1_0 = (1*LSCB)*(MT1J+PAD) + (1*LSPB) = 224
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:320 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 320
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:384 // lwoB_1_0_2_0 = (1*LSCB)*(MT1J+PAD) + (2*LSPB) = 384
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:480 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 480
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:544 // lwoB_1_0_3_0 = (1*LSCB)*(MT1J+PAD) + (3*LSPB) = 544
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:640 // lwoB_0_0_4_0 = (0*LSCB)*(MT1J+PAD) + (4*LSPB) = 640
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:704 // lwoB_1_0_4_0 = (1*LSCB)*(MT1J+PAD) + (4*LSPB) = 704
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:800 // lwoB_0_0_5_0 = (0*LSCB)*(MT1J+PAD) + (5*LSPB) = 800
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:864 // lwoB_1_0_5_0 = (1*LSCB)*(MT1J+PAD) + (5*LSPB) = 864
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:960 // lwoB_0_0_6_0 = (0*LSCB)*(MT1J+PAD) + (6*LSPB) = 960
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:1024 // lwoB_1_0_6_0 = (1*LSCB)*(MT1J+PAD) + (6*LSPB) = 1024
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:1120 // lwoB_0_0_7_0 = (0*LSCB)*(MT1J+PAD) + (7*LSPB) = 1120
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:1184 // lwoB_1_0_7_0 = (1*LSCB)*(MT1J+PAD) + (7*LSPB) = 1184
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+8] offset:1280 // lwoB_0_0_8_0 = (0*LSCB)*(MT1J+PAD) + (8*LSPB) = 1280
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+8] offset:1344 // lwoB_1_0_8_0 = (1*LSCB)*(MT1J+PAD) + (8*LSPB) = 1344
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+9] offset:1440 // lwoB_0_0_9_0 = (0*LSCB)*(MT1J+PAD) + (9*LSPB) = 1440
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+9] offset:1504 // lwoB_1_0_9_0 = (1*LSCB)*(MT1J+PAD) + (9*LSPB) = 1504
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+10] offset:1600 // lwoB_0_0_10_0 = (0*LSCB)*(MT1J+PAD) + (10*LSPB) = 1600
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+10] offset:1664 // lwoB_1_0_10_0 = (1*LSCB)*(MT1J+PAD) + (10*LSPB) = 1664
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+11] offset:1760 // lwoB_0_0_11_0 = (0*LSCB)*(MT1J+PAD) + (11*LSPB) = 1760
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+11] offset:1824 // lwoB_1_0_11_0 = (1*LSCB)*(MT1J+PAD) + (11*LSPB) = 1824
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+12] offset:1920 // lwoB_0_0_12_0 = (0*LSCB)*(MT1J+PAD) + (12*LSPB) = 1920
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+12] offset:1984 // lwoB_1_0_12_0 = (1*LSCB)*(MT1J+PAD) + (12*LSPB) = 1984
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+13] offset:2080 // lwoB_0_0_13_0 = (0*LSCB)*(MT1J+PAD) + (13*LSPB) = 2080
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+13] offset:2144 // lwoB_1_0_13_0 = (1*LSCB)*(MT1J+PAD) + (13*LSPB) = 2144
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+14] offset:2240 // lwoB_0_0_14_0 = (0*LSCB)*(MT1J+PAD) + (14*LSPB) = 2240
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+14] offset:2304 // lwoB_1_0_14_0 = (1*LSCB)*(MT1J+PAD) + (14*LSPB) = 2304
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+15] offset:2400 // lwoB_0_0_15_0 = (0*LSCB)*(MT1J+PAD) + (15*LSPB) = 2400
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+15] offset:2464 // lwoB_1_0_15_0 = (1*LSCB)*(MT1J+PAD) + (15*LSPB) = 2464

/* local write swap a */

/* (EPS=1) local write swap internal offset -> 8192 */

/* metadata write swap offset -> 2 */

/* local write swap b */

/* (EPS=1) local write swap internal offset -> 8192 */
s_cmp_eq_u32 s[sgprLoopCounterL], 0x1              // PGR=2 but only 1 loop
s_cbranch_scc1 label_skipPGR2_0                    // PGR=2 but only 1 loop
buffer_load_b32 v[vgprG2LA+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_0_0
buffer_load_b32 v[vgprG2LA+1], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_1_0
buffer_load_b32 v[vgprG2LA+2], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_2_0
buffer_load_b32 v[vgprG2LA+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_3_0
buffer_load_b32 v[vgprG2LA+4], v[vgprGlobalReadOffsetA+4], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_4_0
buffer_load_b32 v[vgprG2LA+5], v[vgprGlobalReadOffsetA+5], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_5_0
buffer_load_b32 v[vgprG2LA+6], v[vgprGlobalReadOffsetA+6], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_6_0
buffer_load_b32 v[vgprG2LA+7], v[vgprGlobalReadOffsetA+7], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_7_0
buffer_load_d16_b16 v[vgprValuMetadata+4+0], v[vgprGlobalReadOffsetMetadata+0], s[sgprSrdMetadata:sgprSrdMetadata+3], null offen offset:0 // G -> Reg ValuMetadata
buffer_load_d16_b16 v[vgprValuMetadata+4+1], v[vgprGlobalReadOffsetMetadata+0], s[sgprSrdMetadata:sgprSrdMetadata+3], null offen offset:4 // G -> Reg ValuMetadata
buffer_load_d16_b16 v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_0_0
buffer_load_d16_hi_b16 v[vgprG2LB+0], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_0_0
buffer_load_d16_b16 v[vgprG2LB+1], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_1_0
buffer_load_d16_hi_b16 v[vgprG2LB+1], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_1_0
buffer_load_d16_b16 v[vgprG2LB+2], v[vgprGlobalReadOffsetB+4], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_2_0
buffer_load_d16_hi_b16 v[vgprG2LB+2], v[vgprGlobalReadOffsetB+5], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_2_0
buffer_load_d16_b16 v[vgprG2LB+3], v[vgprGlobalReadOffsetB+6], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_3_0
buffer_load_d16_hi_b16 v[vgprG2LB+3], v[vgprGlobalReadOffsetB+7], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_3_0
buffer_load_d16_b16 v[vgprG2LB+4], v[vgprGlobalReadOffsetB+8], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_4_0
buffer_load_d16_hi_b16 v[vgprG2LB+4], v[vgprGlobalReadOffsetB+9], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_4_0
buffer_load_d16_b16 v[vgprG2LB+5], v[vgprGlobalReadOffsetB+10], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_5_0
buffer_load_d16_hi_b16 v[vgprG2LB+5], v[vgprGlobalReadOffsetB+11], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_5_0
buffer_load_d16_b16 v[vgprG2LB+6], v[vgprGlobalReadOffsetB+12], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_6_0
buffer_load_d16_hi_b16 v[vgprG2LB+6], v[vgprGlobalReadOffsetB+13], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_6_0
buffer_load_d16_b16 v[vgprG2LB+7], v[vgprGlobalReadOffsetB+14], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_7_0
buffer_load_d16_hi_b16 v[vgprG2LB+7], v[vgprGlobalReadOffsetB+15], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_7_0
buffer_load_d16_b16 v[vgprG2LB+8], v[vgprGlobalReadOffsetB+16], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_8_0
buffer_load_d16_hi_b16 v[vgprG2LB+8], v[vgprGlobalReadOffsetB+17], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_8_0
buffer_load_d16_b16 v[vgprG2LB+9], v[vgprGlobalReadOffsetB+18], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_9_0
buffer_load_d16_hi_b16 v[vgprG2LB+9], v[vgprGlobalReadOffsetB+19], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_9_0
buffer_load_d16_b16 v[vgprG2LB+10], v[vgprGlobalReadOffsetB+20], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_10_0
buffer_load_d16_hi_b16 v[vgprG2LB+10], v[vgprGlobalReadOffsetB+21], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_10_0
buffer_load_d16_b16 v[vgprG2LB+11], v[vgprGlobalReadOffsetB+22], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_11_0
buffer_load_d16_hi_b16 v[vgprG2LB+11], v[vgprGlobalReadOffsetB+23], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_11_0
buffer_load_d16_b16 v[vgprG2LB+12], v[vgprGlobalReadOffsetB+24], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_12_0
buffer_load_d16_hi_b16 v[vgprG2LB+12], v[vgprGlobalReadOffsetB+25], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_12_0
buffer_load_d16_b16 v[vgprG2LB+13], v[vgprGlobalReadOffsetB+26], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_13_0
buffer_load_d16_hi_b16 v[vgprG2LB+13], v[vgprGlobalReadOffsetB+27], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_13_0
buffer_load_d16_b16 v[vgprG2LB+14], v[vgprGlobalReadOffsetB+28], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_14_0
buffer_load_d16_hi_b16 v[vgprG2LB+14], v[vgprGlobalReadOffsetB+29], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_14_0
buffer_load_d16_b16 v[vgprG2LB+15], v[vgprGlobalReadOffsetB+30], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_15_0
buffer_load_d16_hi_b16 v[vgprG2LB+15], v[vgprGlobalReadOffsetB+31], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_15_0
label_skipPGR2_0:
s_waitcnt lgkmcnt(0)                               // 0prefetch wait for local write
// Skip barrier: NumThreads=32

/* local read prefetch a */
ds_load_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:192 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:320 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:448 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0

/* local read prefetch b */
ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:2 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0

/* local read inc a */
/* N/A, lro->512 */
/* self.localReadDoCntA 1 self.localReadDoCntB 1 */

/* local read inc b */
/* N/A, lro->32 */
/* self.localReadDoCntA 1 self.localReadDoCntB 1 */

/******************************************/
/* Unrolled Loop(s) - Begin               */
/******************************************/
label_openLoopL:
s_cmp_eq_u32 s[sgprLoopCounterL], 0x1              // LoopCounterL < EndCounter
s_cbranch_scc1 label_toPGR1_0                      // PGR=2 but only 1 loop, toPGR1
s_cmp_le_u32 s[sgprLoopCounterL], 0x2              // LoopCounterL < EndCounter
s_cbranch_scc1 label_LoopEndL_evenexit             // do not enter LoopL
label_LoopBeginL:

/******************************************/
/* Unrolled Loop 1/2 - Begin              */
/******************************************/

/* Begin Each Unroll: Check VGPR.checkin for INT8 LW */

/* iter 0 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:0, lwEndMfmaIndex:0  */
/*  numMfmaForLR:0, syncPlrMfmaIndex:1  */
/*  mfmaIndex:0  */
ds_load_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:1088 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_load_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:1216 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=1 iui=0
ds_load_u16 v[vgprValuA_X1_I0+2], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=4 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+2], v[vgprLocalReadAddrA] offset:1344 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=5 oIdx=0 buffer=1 iui=0
ds_load_u16 v[vgprValuA_X1_I0+3], v[vgprLocalReadAddrA] offset:1408 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=6 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+3], v[vgprLocalReadAddrA] offset:1472 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=7 oIdx=0 buffer=1 iui=0
ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:64 // L -> Reg lro=32 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:66 // L -> Reg lro=32 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0

/* global read inc A loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s72, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_i32 s75, 64, s[sgprGSU]
s_lshr_b32 s75, s75, 0x3
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s72, s[sgprWrapUMetadata+0], s75     // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUMetadata+1], 0       // incUpper <- ?
s_add_u32 s[sgprSrdMetadata+0], s[sgprSrdMetadata+0], s72 // gra SRD += incSparse(lower)
s_addc_u32 s[sgprSrdMetadata+1], s[sgprSrdMetadata+1], s73 // gra SRD += incSparse(uppper)
s_sub_u32 s[sgprShadowLimitMetadata+0], s[sgprShadowLimitMetadata+0], s72 // limit -= incSparse(lower)
s_subb_u32 s[sgprShadowLimitMetadata+1], s[sgprShadowLimitMetadata+1], s73 // limit -= incSparse(uppper)
s_cmp_eq_u32 s[sgprShadowLimitMetadata+1], 0       // are we within 2^32?
s_cselect_b32 s[sgprSrdMetadata+2], s[sgprShadowLimitMetadata+0], BufferLimit // Move shadow to real if we are within 2^32

/* global read inc B loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s72, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+0] offset:8192 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 8192
buffer_load_b32 v[vgprG2LA+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_0_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+1] offset:8448 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 8448
buffer_load_b32 v[vgprG2LA+1], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_1_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+2] offset:8704 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 8704
buffer_load_b32 v[vgprG2LA+2], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_2_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+3] offset:8960 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 8960
buffer_load_b32 v[vgprG2LA+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_3_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+4] offset:9216 // lwoA_0_0_4_0 = (0*LSCA) + (4*LSPA)(*MT0I+PAD) = 9216
buffer_load_b32 v[vgprG2LA+4], v[vgprGlobalReadOffsetA+4], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_4_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+5] offset:9472 // lwoA_0_0_5_0 = (0*LSCA) + (5*LSPA)(*MT0I+PAD) = 9472
buffer_load_b32 v[vgprG2LA+5], v[vgprGlobalReadOffsetA+5], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_5_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+6] offset:9728 // lwoA_0_0_6_0 = (0*LSCA) + (6*LSPA)(*MT0I+PAD) = 9728
buffer_load_b32 v[vgprG2LA+6], v[vgprGlobalReadOffsetA+6], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_6_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+7] offset:9984 // lwoA_0_0_7_0 = (0*LSCA) + (7*LSPA)(*MT0I+PAD) = 9984
buffer_load_b32 v[vgprG2LA+7], v[vgprGlobalReadOffsetA+7], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_7_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
v_mov_b32 v[vgprValuMetadata+2+0], v[vgprValuMetadata+4+0] // copy ValuMetadata from blk2
buffer_load_d16_b16 v[vgprValuMetadata+4+0], v[vgprGlobalReadOffsetMetadata+0], s[sgprSrdMetadata:sgprSrdMetadata+3], null offen offset:0 // G -> Reg ValuMetadata
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
v_mov_b32 v[vgprValuMetadata+2+1], v[vgprValuMetadata+4+1] // copy ValuMetadata from blk2
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:8192 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 8192
buffer_load_d16_b16 v[vgprValuMetadata+4+1], v[vgprGlobalReadOffsetMetadata+0], s[sgprSrdMetadata:sgprSrdMetadata+3], null offen offset:4 // G -> Reg ValuMetadata
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:8256 // lwoB_1_0_0_0 = (1*LSCB)*(MT1J+PAD) + (0*LSPB) = 8256
buffer_load_d16_b16 v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_0_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:8352 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 8352
buffer_load_d16_hi_b16 v[vgprG2LB+0], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_0_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:8416 // lwoB_1_0_1_0 = (1*LSCB)*(MT1J+PAD) + (1*LSPB) = 8416
buffer_load_d16_b16 v[vgprG2LB+1], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_1_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:8512 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 8512
buffer_load_d16_hi_b16 v[vgprG2LB+1], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_1_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:8576 // lwoB_1_0_2_0 = (1*LSCB)*(MT1J+PAD) + (2*LSPB) = 8576
buffer_load_d16_b16 v[vgprG2LB+2], v[vgprGlobalReadOffsetB+4], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_2_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:8672 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 8672
buffer_load_d16_hi_b16 v[vgprG2LB+2], v[vgprGlobalReadOffsetB+5], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_2_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:8736 // lwoB_1_0_3_0 = (1*LSCB)*(MT1J+PAD) + (3*LSPB) = 8736
buffer_load_d16_b16 v[vgprG2LB+3], v[vgprGlobalReadOffsetB+6], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_3_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:8832 // lwoB_0_0_4_0 = (0*LSCB)*(MT1J+PAD) + (4*LSPB) = 8832
buffer_load_d16_hi_b16 v[vgprG2LB+3], v[vgprGlobalReadOffsetB+7], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_3_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:8896 // lwoB_1_0_4_0 = (1*LSCB)*(MT1J+PAD) + (4*LSPB) = 8896
buffer_load_d16_b16 v[vgprG2LB+4], v[vgprGlobalReadOffsetB+8], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_4_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:8992 // lwoB_0_0_5_0 = (0*LSCB)*(MT1J+PAD) + (5*LSPB) = 8992
buffer_load_d16_hi_b16 v[vgprG2LB+4], v[vgprGlobalReadOffsetB+9], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_4_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:9056 // lwoB_1_0_5_0 = (1*LSCB)*(MT1J+PAD) + (5*LSPB) = 9056
buffer_load_d16_b16 v[vgprG2LB+5], v[vgprGlobalReadOffsetB+10], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_5_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:9152 // lwoB_0_0_6_0 = (0*LSCB)*(MT1J+PAD) + (6*LSPB) = 9152
buffer_load_d16_hi_b16 v[vgprG2LB+5], v[vgprGlobalReadOffsetB+11], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_5_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:9216 // lwoB_1_0_6_0 = (1*LSCB)*(MT1J+PAD) + (6*LSPB) = 9216
buffer_load_d16_b16 v[vgprG2LB+6], v[vgprGlobalReadOffsetB+12], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_6_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:9312 // lwoB_0_0_7_0 = (0*LSCB)*(MT1J+PAD) + (7*LSPB) = 9312
buffer_load_d16_hi_b16 v[vgprG2LB+6], v[vgprGlobalReadOffsetB+13], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_6_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:9376 // lwoB_1_0_7_0 = (1*LSCB)*(MT1J+PAD) + (7*LSPB) = 9376
buffer_load_d16_b16 v[vgprG2LB+7], v[vgprGlobalReadOffsetB+14], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_7_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+8] offset:9472 // lwoB_0_0_8_0 = (0*LSCB)*(MT1J+PAD) + (8*LSPB) = 9472
buffer_load_d16_hi_b16 v[vgprG2LB+7], v[vgprGlobalReadOffsetB+15], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_7_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+8] offset:9536 // lwoB_1_0_8_0 = (1*LSCB)*(MT1J+PAD) + (8*LSPB) = 9536
buffer_load_d16_b16 v[vgprG2LB+8], v[vgprGlobalReadOffsetB+16], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_8_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+9] offset:9632 // lwoB_0_0_9_0 = (0*LSCB)*(MT1J+PAD) + (9*LSPB) = 9632
buffer_load_d16_hi_b16 v[vgprG2LB+8], v[vgprGlobalReadOffsetB+17], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_8_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+9] offset:9696 // lwoB_1_0_9_0 = (1*LSCB)*(MT1J+PAD) + (9*LSPB) = 9696
buffer_load_d16_b16 v[vgprG2LB+9], v[vgprGlobalReadOffsetB+18], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_9_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+10] offset:9792 // lwoB_0_0_10_0 = (0*LSCB)*(MT1J+PAD) + (10*LSPB) = 9792
buffer_load_d16_hi_b16 v[vgprG2LB+9], v[vgprGlobalReadOffsetB+19], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_9_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+10] offset:9856 // lwoB_1_0_10_0 = (1*LSCB)*(MT1J+PAD) + (10*LSPB) = 9856
buffer_load_d16_b16 v[vgprG2LB+10], v[vgprGlobalReadOffsetB+20], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_10_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+11] offset:9952 // lwoB_0_0_11_0 = (0*LSCB)*(MT1J+PAD) + (11*LSPB) = 9952
buffer_load_d16_hi_b16 v[vgprG2LB+10], v[vgprGlobalReadOffsetB+21], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_10_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+11] offset:10016 // lwoB_1_0_11_0 = (1*LSCB)*(MT1J+PAD) + (11*LSPB) = 10016
buffer_load_d16_b16 v[vgprG2LB+11], v[vgprGlobalReadOffsetB+22], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_11_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+12] offset:10112 // lwoB_0_0_12_0 = (0*LSCB)*(MT1J+PAD) + (12*LSPB) = 10112
buffer_load_d16_hi_b16 v[vgprG2LB+11], v[vgprGlobalReadOffsetB+23], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_11_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+12] offset:10176 // lwoB_1_0_12_0 = (1*LSCB)*(MT1J+PAD) + (12*LSPB) = 10176
buffer_load_d16_b16 v[vgprG2LB+12], v[vgprGlobalReadOffsetB+24], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_12_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+13] offset:10272 // lwoB_0_0_13_0 = (0*LSCB)*(MT1J+PAD) + (13*LSPB) = 10272
buffer_load_d16_hi_b16 v[vgprG2LB+12], v[vgprGlobalReadOffsetB+25], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_12_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+13] offset:10336 // lwoB_1_0_13_0 = (1*LSCB)*(MT1J+PAD) + (13*LSPB) = 10336
buffer_load_d16_b16 v[vgprG2LB+13], v[vgprGlobalReadOffsetB+26], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_13_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+14] offset:10432 // lwoB_0_0_14_0 = (0*LSCB)*(MT1J+PAD) + (14*LSPB) = 10432
buffer_load_d16_hi_b16 v[vgprG2LB+13], v[vgprGlobalReadOffsetB+27], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_13_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+14] offset:10496 // lwoB_1_0_14_0 = (1*LSCB)*(MT1J+PAD) + (14*LSPB) = 10496
buffer_load_d16_b16 v[vgprG2LB+14], v[vgprGlobalReadOffsetB+28], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_14_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+15] offset:10592 // lwoB_0_0_15_0 = (0*LSCB)*(MT1J+PAD) + (15*LSPB) = 10592
buffer_load_d16_hi_b16 v[vgprG2LB+14], v[vgprGlobalReadOffsetB+29], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_14_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+15] offset:10656 // lwoB_1_0_15_0 = (1*LSCB)*(MT1J+PAD) + (15*LSPB) = 10656
buffer_load_d16_b16 v[vgprG2LB+15], v[vgprGlobalReadOffsetB+30], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_15_0
buffer_load_d16_hi_b16 v[vgprG2LB+15], v[vgprGlobalReadOffsetB+31], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_15_0

/* local write swap offsets a */

/* (EPS=1) local write swap internal offset -> 0 */

/* metadata write swap offset -> 0 */

/* local write swap offsets b */

/* (EPS=1) local write swap internal offset -> 0 */

/* local read swap offsets a */

/* local read swap internal offset -> 8192 */

/* local read swap offsets b */

/* local read swap internal offset -> 8192 */

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
s_waitcnt lgkmcnt(15)                              // wait for prior local read local write old=0, new=50 newLW=40 newLR=10
v_swmmac_f32_16x16x32_f16 v[0:7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuMetadata+0] // left value = v[0+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=8 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */

/* iter 1 */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:0, lwEndMfmaIndex:0  */
/*  numMfmaForLR:0, syncPlrMfmaIndex:1  */
/*  mfmaIndex:1  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
// Skip barrier: NumThreads=32
ds_load_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:8192 // L -> Reg lro=0 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:8256 // L -> Reg lro=0 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:8320 // L -> Reg lro=0 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:8384 // L -> Reg lro=0 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:8448 // L -> Reg lro=0 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:8512 // L -> Reg lro=0 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:8576 // L -> Reg lro=0 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:8640 // L -> Reg lro=0 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:8192 // L -> Reg lro=0 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:8194 // L -> Reg lro=0 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
s_waitcnt lgkmcnt(15)                              // wait for prior local read local write old=0, new=50 newLW=40 newLR=10
v_swmmac_f32_16x16x32_f16 v[0:7], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+3], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+7], v[vgprValuMetadata+1] // left value = v[0+0:7+0]
/* numPrefetchIter=1 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=8 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */

/******************************************/
/* Unrolled Loop - End 1/2                */
/******************************************/

/* closeLoop loopL finalLoop=0 tailLoop=0 */
s_sub_u32 s[sgprLoopCounterL], s[sgprLoopCounterL], 1 // dec counterL
s_cmp_eq_i32 s[sgprLoopCounterL], 0x2              // counterL==2
s_cbranch_scc1 label_LoopEndL_oddexit              // exit LoopL

/******************************************/
/* Unrolled Loop 2/2 - Begin              */
/******************************************/

/* Begin Each Unroll: Check VGPR.checkin for INT8 LW */

/* iter 0 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:0, lwEndMfmaIndex:0  */
/*  numMfmaForLR:0, syncPlrMfmaIndex:1  */
/*  mfmaIndex:0  */
ds_load_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:9216 // L -> Reg lro=512 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:9280 // L -> Reg lro=512 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_load_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:9344 // L -> Reg lro=512 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:9408 // L -> Reg lro=512 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=1 iui=0
ds_load_u16 v[vgprValuA_X1_I0+2], v[vgprLocalReadAddrA] offset:9472 // L -> Reg lro=512 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=4 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+2], v[vgprLocalReadAddrA] offset:9536 // L -> Reg lro=512 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=5 oIdx=0 buffer=1 iui=0
ds_load_u16 v[vgprValuA_X1_I0+3], v[vgprLocalReadAddrA] offset:9600 // L -> Reg lro=512 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=6 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+3], v[vgprLocalReadAddrA] offset:9664 // L -> Reg lro=512 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=7 oIdx=0 buffer=1 iui=0
ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:8256 // L -> Reg lro=32 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:8258 // L -> Reg lro=32 swapByteOffset=8192 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0

/* global read inc A loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s72, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_i32 s75, 64, s[sgprGSU]
s_lshr_b32 s75, s75, 0x3
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s72, s[sgprWrapUMetadata+0], s75     // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUMetadata+1], 0       // incUpper <- ?
s_add_u32 s[sgprSrdMetadata+0], s[sgprSrdMetadata+0], s72 // gra SRD += incSparse(lower)
s_addc_u32 s[sgprSrdMetadata+1], s[sgprSrdMetadata+1], s73 // gra SRD += incSparse(uppper)
s_sub_u32 s[sgprShadowLimitMetadata+0], s[sgprShadowLimitMetadata+0], s72 // limit -= incSparse(lower)
s_subb_u32 s[sgprShadowLimitMetadata+1], s[sgprShadowLimitMetadata+1], s73 // limit -= incSparse(uppper)
s_cmp_eq_u32 s[sgprShadowLimitMetadata+1], 0       // are we within 2^32?
s_cselect_b32 s[sgprSrdMetadata+2], s[sgprShadowLimitMetadata+0], BufferLimit // Move shadow to real if we are within 2^32

/* global read inc B loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s72, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+0] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
buffer_load_b32 v[vgprG2LA+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_0_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+1] offset:256 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 256
buffer_load_b32 v[vgprG2LA+1], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_1_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+2] offset:512 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 512
buffer_load_b32 v[vgprG2LA+2], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_2_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+3] offset:768 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 768
buffer_load_b32 v[vgprG2LA+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_3_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+4] offset:1024 // lwoA_0_0_4_0 = (0*LSCA) + (4*LSPA)(*MT0I+PAD) = 1024
buffer_load_b32 v[vgprG2LA+4], v[vgprGlobalReadOffsetA+4], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_4_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+5] offset:1280 // lwoA_0_0_5_0 = (0*LSCA) + (5*LSPA)(*MT0I+PAD) = 1280
buffer_load_b32 v[vgprG2LA+5], v[vgprGlobalReadOffsetA+5], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_5_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+6] offset:1536 // lwoA_0_0_6_0 = (0*LSCA) + (6*LSPA)(*MT0I+PAD) = 1536
buffer_load_b32 v[vgprG2LA+6], v[vgprGlobalReadOffsetA+6], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_6_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+7] offset:1792 // lwoA_0_0_7_0 = (0*LSCA) + (7*LSPA)(*MT0I+PAD) = 1792
buffer_load_b32 v[vgprG2LA+7], v[vgprGlobalReadOffsetA+7], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // G -> Reg 0_0_7_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
v_mov_b32 v[vgprValuMetadata+0+0], v[vgprValuMetadata+4+0] // copy ValuMetadata from blk2
buffer_load_d16_b16 v[vgprValuMetadata+4+0], v[vgprGlobalReadOffsetMetadata+0], s[sgprSrdMetadata:sgprSrdMetadata+3], null offen offset:0 // G -> Reg ValuMetadata
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
v_mov_b32 v[vgprValuMetadata+0+1], v[vgprValuMetadata+4+1] // copy ValuMetadata from blk2
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
buffer_load_d16_b16 v[vgprValuMetadata+4+1], v[vgprGlobalReadOffsetMetadata+0], s[sgprSrdMetadata:sgprSrdMetadata+3], null offen offset:4 // G -> Reg ValuMetadata
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:64 // lwoB_1_0_0_0 = (1*LSCB)*(MT1J+PAD) + (0*LSPB) = 64
buffer_load_d16_b16 v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_0_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:160 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 160
buffer_load_d16_hi_b16 v[vgprG2LB+0], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_0_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:224 // lwoB_1_0_1_0 = (1*LSCB)*(MT1J+PAD) + (1*LSPB) = 224
buffer_load_d16_b16 v[vgprG2LB+1], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_1_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:320 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 320
buffer_load_d16_hi_b16 v[vgprG2LB+1], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_1_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:384 // lwoB_1_0_2_0 = (1*LSCB)*(MT1J+PAD) + (2*LSPB) = 384
buffer_load_d16_b16 v[vgprG2LB+2], v[vgprGlobalReadOffsetB+4], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_2_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:480 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 480
buffer_load_d16_hi_b16 v[vgprG2LB+2], v[vgprGlobalReadOffsetB+5], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_2_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:544 // lwoB_1_0_3_0 = (1*LSCB)*(MT1J+PAD) + (3*LSPB) = 544
buffer_load_d16_b16 v[vgprG2LB+3], v[vgprGlobalReadOffsetB+6], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_3_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:640 // lwoB_0_0_4_0 = (0*LSCB)*(MT1J+PAD) + (4*LSPB) = 640
buffer_load_d16_hi_b16 v[vgprG2LB+3], v[vgprGlobalReadOffsetB+7], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_3_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:704 // lwoB_1_0_4_0 = (1*LSCB)*(MT1J+PAD) + (4*LSPB) = 704
buffer_load_d16_b16 v[vgprG2LB+4], v[vgprGlobalReadOffsetB+8], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_4_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:800 // lwoB_0_0_5_0 = (0*LSCB)*(MT1J+PAD) + (5*LSPB) = 800
buffer_load_d16_hi_b16 v[vgprG2LB+4], v[vgprGlobalReadOffsetB+9], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_4_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:864 // lwoB_1_0_5_0 = (1*LSCB)*(MT1J+PAD) + (5*LSPB) = 864
buffer_load_d16_b16 v[vgprG2LB+5], v[vgprGlobalReadOffsetB+10], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_5_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:960 // lwoB_0_0_6_0 = (0*LSCB)*(MT1J+PAD) + (6*LSPB) = 960
buffer_load_d16_hi_b16 v[vgprG2LB+5], v[vgprGlobalReadOffsetB+11], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_5_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:1024 // lwoB_1_0_6_0 = (1*LSCB)*(MT1J+PAD) + (6*LSPB) = 1024
buffer_load_d16_b16 v[vgprG2LB+6], v[vgprGlobalReadOffsetB+12], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_6_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:1120 // lwoB_0_0_7_0 = (0*LSCB)*(MT1J+PAD) + (7*LSPB) = 1120
buffer_load_d16_hi_b16 v[vgprG2LB+6], v[vgprGlobalReadOffsetB+13], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_6_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:1184 // lwoB_1_0_7_0 = (1*LSCB)*(MT1J+PAD) + (7*LSPB) = 1184
buffer_load_d16_b16 v[vgprG2LB+7], v[vgprGlobalReadOffsetB+14], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_7_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+8] offset:1280 // lwoB_0_0_8_0 = (0*LSCB)*(MT1J+PAD) + (8*LSPB) = 1280
buffer_load_d16_hi_b16 v[vgprG2LB+7], v[vgprGlobalReadOffsetB+15], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_7_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+8] offset:1344 // lwoB_1_0_8_0 = (1*LSCB)*(MT1J+PAD) + (8*LSPB) = 1344
buffer_load_d16_b16 v[vgprG2LB+8], v[vgprGlobalReadOffsetB+16], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_8_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+9] offset:1440 // lwoB_0_0_9_0 = (0*LSCB)*(MT1J+PAD) + (9*LSPB) = 1440
buffer_load_d16_hi_b16 v[vgprG2LB+8], v[vgprGlobalReadOffsetB+17], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_8_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+9] offset:1504 // lwoB_1_0_9_0 = (1*LSCB)*(MT1J+PAD) + (9*LSPB) = 1504
buffer_load_d16_b16 v[vgprG2LB+9], v[vgprGlobalReadOffsetB+18], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_9_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+10] offset:1600 // lwoB_0_0_10_0 = (0*LSCB)*(MT1J+PAD) + (10*LSPB) = 1600
buffer_load_d16_hi_b16 v[vgprG2LB+9], v[vgprGlobalReadOffsetB+19], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_9_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+10] offset:1664 // lwoB_1_0_10_0 = (1*LSCB)*(MT1J+PAD) + (10*LSPB) = 1664
buffer_load_d16_b16 v[vgprG2LB+10], v[vgprGlobalReadOffsetB+20], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_10_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+11] offset:1760 // lwoB_0_0_11_0 = (0*LSCB)*(MT1J+PAD) + (11*LSPB) = 1760
buffer_load_d16_hi_b16 v[vgprG2LB+10], v[vgprGlobalReadOffsetB+21], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_10_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+11] offset:1824 // lwoB_1_0_11_0 = (1*LSCB)*(MT1J+PAD) + (11*LSPB) = 1824
buffer_load_d16_b16 v[vgprG2LB+11], v[vgprGlobalReadOffsetB+22], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_11_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+12] offset:1920 // lwoB_0_0_12_0 = (0*LSCB)*(MT1J+PAD) + (12*LSPB) = 1920
buffer_load_d16_hi_b16 v[vgprG2LB+11], v[vgprGlobalReadOffsetB+23], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_11_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+12] offset:1984 // lwoB_1_0_12_0 = (1*LSCB)*(MT1J+PAD) + (12*LSPB) = 1984
buffer_load_d16_b16 v[vgprG2LB+12], v[vgprGlobalReadOffsetB+24], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_12_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+13] offset:2080 // lwoB_0_0_13_0 = (0*LSCB)*(MT1J+PAD) + (13*LSPB) = 2080
buffer_load_d16_hi_b16 v[vgprG2LB+12], v[vgprGlobalReadOffsetB+25], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_12_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+13] offset:2144 // lwoB_1_0_13_0 = (1*LSCB)*(MT1J+PAD) + (13*LSPB) = 2144
buffer_load_d16_b16 v[vgprG2LB+13], v[vgprGlobalReadOffsetB+26], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_13_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+14] offset:2240 // lwoB_0_0_14_0 = (0*LSCB)*(MT1J+PAD) + (14*LSPB) = 2240
buffer_load_d16_hi_b16 v[vgprG2LB+13], v[vgprGlobalReadOffsetB+27], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_13_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+14] offset:2304 // lwoB_1_0_14_0 = (1*LSCB)*(MT1J+PAD) + (14*LSPB) = 2304
buffer_load_d16_b16 v[vgprG2LB+14], v[vgprGlobalReadOffsetB+28], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_14_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+15] offset:2400 // lwoB_0_0_15_0 = (0*LSCB)*(MT1J+PAD) + (15*LSPB) = 2400
buffer_load_d16_hi_b16 v[vgprG2LB+14], v[vgprGlobalReadOffsetB+29], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_14_0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+15] offset:2464 // lwoB_1_0_15_0 = (1*LSCB)*(MT1J+PAD) + (15*LSPB) = 2464
buffer_load_d16_b16 v[vgprG2LB+15], v[vgprGlobalReadOffsetB+30], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 0_0_15_0
buffer_load_d16_hi_b16 v[vgprG2LB+15], v[vgprGlobalReadOffsetB+31], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // G -> Reg 1_0_15_0

/* local write swap offsets a */

/* (EPS=1) local write swap internal offset -> 8192 */

/* metadata write swap offset -> 2 */

/* local write swap offsets b */

/* (EPS=1) local write swap internal offset -> 8192 */

/* local read swap offsets a */

/* local read swap internal offset -> 0 */

/* local read swap offsets b */

/* local read swap internal offset -> 0 */

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
s_waitcnt lgkmcnt(15)                              // wait for prior local read local write old=0, new=50 newLW=40 newLR=10
v_swmmac_f32_16x16x32_f16 v[0:7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuMetadata+2] // left value = v[0+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=8 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */

/* iter 1 */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:0, lwEndMfmaIndex:0  */
/*  numMfmaForLR:0, syncPlrMfmaIndex:1  */
/*  mfmaIndex:1  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
// Skip barrier: NumThreads=32
ds_load_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:192 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:320 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:448 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:2 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
s_waitcnt lgkmcnt(15)                              // wait for prior local read local write old=0, new=50 newLW=40 newLR=10
v_swmmac_f32_16x16x32_f16 v[0:7], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+3], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+7], v[vgprValuMetadata+3] // left value = v[0+0:7+0]
/* numPrefetchIter=1 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=8 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */

/******************************************/
/* Unrolled Loop - End 2/2 (final)        */
/******************************************/

/* closeLoop loopL finalLoop=1 tailLoop=0 */
s_sub_u32 s[sgprLoopCounterL], s[sgprLoopCounterL], 1 // dec counterL
s_cmp_eq_i32 s[sgprLoopCounterL], 0x2              // counterL==2
s_cbranch_scc0 label_LoopBeginL                    // restart LoopL
label_LoopEndL_evenexit:  /// unroll loop eveniter exit
v_xor_b32 v[vgprLocalWriteAddrA+0], 0x2000, v[vgprLocalWriteAddrA+0] // swap Red Blk

/* metadata write swap offset -> 0 */
v_xor_b32 v[vgprLocalWriteAddrB+0], 0x2000, v[vgprLocalWriteAddrB+0] // swap Red Blk

/* (EPS=1) local write swap internal offset -> 0 */

/* metadata write swap offset -> 2 */

/* (EPS=1) local write swap internal offset -> 0 */
s_branch label_LoopEndL                            // exit unroll loopL (and skip second exit code)
label_LoopEndL_oddexit:  /// unroll loop odditer exit

/* Select high bank of LDS */
v_xor_b32 v[vgprLocalReadAddrA], 0x2000, v[vgprLocalReadAddrA] // swap Red Blk
v_xor_b32 v[vgprLocalReadAddrB], 0x2000, v[vgprLocalReadAddrB] // swap Red Blk
s_waitcnt vmcnt(0)                                 // wait for global read before moving metadata to target vgpr
v_mov_b32 v[vgprValuMetadata+0], v[vgprValuMetadata+2+0] // copy ValuMetadata blk1 to blk0
v_mov_b32 v[vgprValuMetadata+1], v[vgprValuMetadata+2+1] // copy ValuMetadata blk1 to blk0
label_LoopEndL:

/* Before NLL: Check VGPR.checkin for INT8 LW */

/******************************************/
/* Ord. NoGlobalLoadLoop - Begin          */
/******************************************/

/* iter 0 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:0, lwEndMfmaIndex:0  */
/*  numMfmaForLR:0, syncPlrMfmaIndex:1  */
/*  mfmaIndex:0  */
ds_load_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:1088 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_load_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:1216 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=1 iui=0
ds_load_u16 v[vgprValuA_X1_I0+2], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=4 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+2], v[vgprLocalReadAddrA] offset:1344 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=5 oIdx=0 buffer=1 iui=0
ds_load_u16 v[vgprValuA_X1_I0+3], v[vgprLocalReadAddrA] offset:1408 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=6 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+3], v[vgprLocalReadAddrA] offset:1472 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=7 oIdx=0 buffer=1 iui=0
ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:64 // L -> Reg lro=32 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:66 // L -> Reg lro=32 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0

/* global read inc A loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s72, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_i32 s75, 64, s[sgprGSU]
s_lshr_b32 s75, s75, 0x3
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s72, s[sgprWrapUMetadata+0], s75     // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUMetadata+1], 0       // incUpper <- ?
s_add_u32 s[sgprSrdMetadata+0], s[sgprSrdMetadata+0], s72 // gra SRD += incSparse(lower)
s_addc_u32 s[sgprSrdMetadata+1], s[sgprSrdMetadata+1], s73 // gra SRD += incSparse(uppper)
s_sub_u32 s[sgprShadowLimitMetadata+0], s[sgprShadowLimitMetadata+0], s72 // limit -= incSparse(lower)
s_subb_u32 s[sgprShadowLimitMetadata+1], s[sgprShadowLimitMetadata+1], s73 // limit -= incSparse(uppper)
s_cmp_eq_u32 s[sgprShadowLimitMetadata+1], 0       // are we within 2^32?
s_cselect_b32 s[sgprSrdMetadata+2], s[sgprShadowLimitMetadata+0], BufferLimit // Move shadow to real if we are within 2^32

/* global read inc B loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s72, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(41)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+0] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(40)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+1] offset:256 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 256
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(39)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+2] offset:512 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 512
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(38)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+3] offset:768 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 768
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(37)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+4] offset:1024 // lwoA_0_0_4_0 = (0*LSCA) + (4*LSPA)(*MT0I+PAD) = 1024
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(36)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+5] offset:1280 // lwoA_0_0_5_0 = (0*LSCA) + (5*LSPA)(*MT0I+PAD) = 1280
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(35)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+6] offset:1536 // lwoA_0_0_6_0 = (0*LSCA) + (6*LSPA)(*MT0I+PAD) = 1536
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(34)                                // wait for global read before writing to local
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+7] offset:1792 // lwoA_0_0_7_0 = (0*LSCA) + (7*LSPA)(*MT0I+PAD) = 1792
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(33)                                // wait for global read before writing to local
v_mov_b32 v[vgprValuMetadata+2+0], v[vgprValuMetadata+4+0] // copy ValuMetadata from blk2
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(32)                                // wait for global read before writing to local
v_mov_b32 v[vgprValuMetadata+2+1], v[vgprValuMetadata+4+1] // copy ValuMetadata from blk2
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(31)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(30)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:64 // lwoB_1_0_0_0 = (1*LSCB)*(MT1J+PAD) + (0*LSPB) = 64
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(29)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:160 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 160
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(28)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:224 // lwoB_1_0_1_0 = (1*LSCB)*(MT1J+PAD) + (1*LSPB) = 224
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(27)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:320 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 320
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(26)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:384 // lwoB_1_0_2_0 = (1*LSCB)*(MT1J+PAD) + (2*LSPB) = 384
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(25)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:480 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 480
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(24)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:544 // lwoB_1_0_3_0 = (1*LSCB)*(MT1J+PAD) + (3*LSPB) = 544
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(23)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:640 // lwoB_0_0_4_0 = (0*LSCB)*(MT1J+PAD) + (4*LSPB) = 640
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(22)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:704 // lwoB_1_0_4_0 = (1*LSCB)*(MT1J+PAD) + (4*LSPB) = 704
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(21)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:800 // lwoB_0_0_5_0 = (0*LSCB)*(MT1J+PAD) + (5*LSPB) = 800
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(20)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:864 // lwoB_1_0_5_0 = (1*LSCB)*(MT1J+PAD) + (5*LSPB) = 864
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(19)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:960 // lwoB_0_0_6_0 = (0*LSCB)*(MT1J+PAD) + (6*LSPB) = 960
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(18)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:1024 // lwoB_1_0_6_0 = (1*LSCB)*(MT1J+PAD) + (6*LSPB) = 1024
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(17)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:1120 // lwoB_0_0_7_0 = (0*LSCB)*(MT1J+PAD) + (7*LSPB) = 1120
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:1184 // lwoB_1_0_7_0 = (1*LSCB)*(MT1J+PAD) + (7*LSPB) = 1184
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(15)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+8] offset:1280 // lwoB_0_0_8_0 = (0*LSCB)*(MT1J+PAD) + (8*LSPB) = 1280
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(14)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+8] offset:1344 // lwoB_1_0_8_0 = (1*LSCB)*(MT1J+PAD) + (8*LSPB) = 1344
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(13)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+9] offset:1440 // lwoB_0_0_9_0 = (0*LSCB)*(MT1J+PAD) + (9*LSPB) = 1440
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(12)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+9] offset:1504 // lwoB_1_0_9_0 = (1*LSCB)*(MT1J+PAD) + (9*LSPB) = 1504
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(11)                                // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+10] offset:1600 // lwoB_0_0_10_0 = (0*LSCB)*(MT1J+PAD) + (10*LSPB) = 1600
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(10)                                // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+10] offset:1664 // lwoB_1_0_10_0 = (1*LSCB)*(MT1J+PAD) + (10*LSPB) = 1664
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(9)                                 // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+11] offset:1760 // lwoB_0_0_11_0 = (0*LSCB)*(MT1J+PAD) + (11*LSPB) = 1760
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(8)                                 // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+11] offset:1824 // lwoB_1_0_11_0 = (1*LSCB)*(MT1J+PAD) + (11*LSPB) = 1824
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(7)                                 // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+12] offset:1920 // lwoB_0_0_12_0 = (0*LSCB)*(MT1J+PAD) + (12*LSPB) = 1920
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(6)                                 // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+12] offset:1984 // lwoB_1_0_12_0 = (1*LSCB)*(MT1J+PAD) + (12*LSPB) = 1984
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(5)                                 // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+13] offset:2080 // lwoB_0_0_13_0 = (0*LSCB)*(MT1J+PAD) + (13*LSPB) = 2080
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(4)                                 // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+13] offset:2144 // lwoB_1_0_13_0 = (1*LSCB)*(MT1J+PAD) + (13*LSPB) = 2144
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(3)                                 // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+14] offset:2240 // lwoB_0_0_14_0 = (0*LSCB)*(MT1J+PAD) + (14*LSPB) = 2240
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(2)                                 // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+14] offset:2304 // lwoB_1_0_14_0 = (1*LSCB)*(MT1J+PAD) + (14*LSPB) = 2304
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // wait for global read before writing to local
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+15] offset:2400 // lwoB_0_0_15_0 = (0*LSCB)*(MT1J+PAD) + (15*LSPB) = 2400
/* sched write - iter 0 writesPerItem=1 */
s_waitcnt vmcnt(0)                                 // wait for global read before writing to local
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+15] offset:2464 // lwoB_1_0_15_0 = (1*LSCB)*(MT1J+PAD) + (15*LSPB) = 2464

/* local write swap offsets a */

/* (EPS=1) local write swap internal offset -> 8192 */

/* metadata write swap offset -> 0 */

/* local write swap offsets b */

/* (EPS=1) local write swap internal offset -> 8192 */

/* local read swap offsets a */
v_xor_b32 v[vgprLocalReadAddrA], 0x2000, v[vgprLocalReadAddrA] // swap Red Blk

/* local read swap offsets b */
v_xor_b32 v[vgprLocalReadAddrB], 0x2000, v[vgprLocalReadAddrB] // swap Red Blk

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
s_waitcnt lgkmcnt(15)                              // wait for prior local read local write old=0, new=50 newLW=40 newLR=10
v_swmmac_f32_16x16x32_f16 v[0:7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuMetadata+0] // left value = v[0+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=8 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */

/* iter 1 */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:0, lwEndMfmaIndex:0  */
/*  numMfmaForLR:0, syncPlrMfmaIndex:1  */
/*  mfmaIndex:1  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
// Skip barrier: NumThreads=32
ds_load_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:192 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:320 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:448 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0
ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:2 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
s_waitcnt lgkmcnt(15)                              // wait for prior local read local write old=0, new=50 newLW=40 newLR=10
v_swmmac_f32_16x16x32_f16 v[0:7], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+3], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+7], v[vgprValuMetadata+1] // left value = v[0+0:7+0]
/* numPrefetchIter=1 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=8 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */
v_mov_b32 v[vgprValuMetadata+0], v[vgprValuMetadata+2+0] // copy ValuMetadata blk1 to blk0
v_mov_b32 v[vgprValuMetadata+1], v[vgprValuMetadata+2+1] // copy ValuMetadata blk1 to blk0
label_toPGR1_0:

/******************************************/
/* Opt. NoLoadLoop - Begin                */
/******************************************/
s_mov_b32 s71, 0x0
s_cmp_eq_u32 s[sgprBeta], s71                      // Beta == 0
s_cbranch_scc0 label_OptNLL_End                    // Branch if Beta is not zero

s_cmp_eq_u32 s[sgprAlpha], 1.0                     // Alpha == 1.0 ?
s_cbranch_scc0 label_OptNLL_End                    // branch if alpha != 1

s_and_b32 s72, 15, s[sgprSizeI]                    // s72 = s[sgprSizeI] % 16
s_add_u32 s73, -0x1, s[sgprNumWorkGroups0]
s_cmp_ge_u32 s[sgprWorkGroup0], s73                // wg0 >= nwg0-1 ?
s_cselect_b32 s72, s72, 0                          // set rMT0
s_mov_b32 s71, 0x0
s_cmp_gt_u32 s72, s71                              // rMT0 > 0
s_cbranch_scc1 label_OptNLL_End                    // jump if edges required
s_and_b32 s72, 15, s[sgprSizeJ]                    // s72 = s[sgprSizeJ] % 16
s_add_u32 s73, -0x1, s[sgprNumWorkGroups1]
s_cmp_ge_u32 s[sgprWorkGroup1], s73                // wg1 >= nwg1-1
s_cselect_b32 s72, s72, 0                          // set rMT1
s_mov_b32 s71, 0x0
s_cmp_gt_u32 s72, s71                              // rMT1 > 0
s_cbranch_scc1 label_OptNLL_End                    // jump if edges required

s_and_b32 s73, 63, s[sgprSizesSum+0]               // s73 = s[sgprSizesSum+0] % 64
s_cmp_eq_u32 s73, 0x0                              // numIterL == 0
s_cbranch_scc0 label_OptNLL_End                    // skip if tail loop required

/* iter 0 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:0, lwEndMfmaIndex:0  */
/*  numMfmaForLR:0, syncPlrMfmaIndex:1  */
/*  mfmaIndex:0  */
ds_load_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:1088 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_load_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:1216 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=1 iui=0
ds_load_u16 v[vgprValuA_X1_I0+2], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=4 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+2], v[vgprLocalReadAddrA] offset:1344 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=5 oIdx=0 buffer=1 iui=0
ds_load_u16 v[vgprValuA_X1_I0+3], v[vgprLocalReadAddrA] offset:1408 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=6 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+3], v[vgprLocalReadAddrA] offset:1472 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=7 oIdx=0 buffer=1 iui=0
ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:64 // L -> Reg lro=32 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:66 // L -> Reg lro=32 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
s_waitcnt lgkmcnt(10)                              // wait for prior local read local write old=0, new=10 newLW=0 newLR=10
v_swmmac_f32_16x16x32_f16 v[0:7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuMetadata+0] // left value = v[0+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=8 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */

/* iter 1 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:0, lwEndMfmaIndex:0  */
/*  numMfmaForLR:0, syncPlrMfmaIndex:1  */
/*  mfmaIndex:1  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
v_swmmac_f32_16x16x32_f16 v[0:7], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+3], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+7], v[vgprValuMetadata+1] // left value = v[0+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=8 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=2 */
/* Stores for OptNLL */
label_Summation_End_OptNLL:
/* endSummation: add vgpr [10...118) to pool */
/* load store sgprs */

/* Mapping of Acc register -> C Vgpr register */

/* Multiply MI out register with Alpha -> C Vgpr register */
/* computeStoreVgprs */
v_lshrrev_b32 v14, 5, v[vgprSerial]                // v14 = v[vgprSerial] / 32
v_lshrrev_b32 v11, 0, v14                          // v11 = v14 / 1
v_mul_lo_u32 v11, 0x10, v11                        // wave coordination offset 1
v_and_b32 v15, 15, v[vgprSerial]                   // v15 = v[vgprSerial] % 16
v_add_lshl_u32 v11, v15, v11, 0                    // coordination 1 = vwB *(wave_id1 + tid1)
v_mul_lo_u32 v12, v11, s[sgprStrideC1J]            //  offset 1
v_mul_lo_u32 v13, v11, s[sgprStrideD1J]            //  offset 1
v_and_b32 v15, 0, v14                              // v15 = v14 % 1
v_mul_lo_u32 v15, 0x10, v15                        // wave coordination offset 0
v_and_b32 v10, 31, v[vgprSerial]                   // v10 = v[vgprSerial] % 32
v_lshrrev_b32 v10, 4, v10                          // v10 = v10 / 16
                                                   // thread0 * continuous_output (multiplier is 1, do nothing)
v_add_lshl_u32 v10, v15, v10, 0                    // coordination 0 = vwA *(wave_id0 + tid0)
s_mul_i32 s47, 16, s[sgprWorkGroup0]               // wgp0 * MT0
v_add_nc_u32 v10, s47, v10                         // coord 0 = (tid0/MI_m)*4 + waveG0*MIB_m + MT0*SG0
s_mul_i32 s47, 16, s[sgprWorkGroup1]               // wgp1 * MT1
v_add_nc_u32 v11, s47, v11                         // coord 1 = (tid0%MI_m) + waveG1*MIB_n + MT1*SG1

/******************************************/
/* Global Write Elements                  */
/******************************************/
label_GW_B0_E0:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=108 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,1,0,0:vw1); (0,2,0,0:vw1); (0,3,0,0:vw1); (0,4,0,0:vw1); (0,5,0,0:vw1); (0,6,0,0:vw1); (0,7,0,0:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
/* (d1,vc1,d0,vc0)=(0,0,4,0) */
/* (d1,vc1,d0,vc0)=(0,0,5,0) */
/* (d1,vc1,d0,vc0)=(0,0,6,0) */
/* (d1,vc1,d0,vc0)=(0,0,7,0) */
v_add_lshl_u32 v16, v13, v10, 0x2                  // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=10, coord0Vgpr=10
v_mov_b32 v[vgprValuC+18], v[vgprValuC+0]          // copy MI out reg to vreg[0]
v_mov_b32 v[vgprValuC+19], v[vgprValuC+1]          // copy MI out reg to vreg[1]
v_mov_b32 v[vgprValuC+20], v[vgprValuC+2]          // copy MI out reg to vreg[2]
v_mov_b32 v[vgprValuC+21], v[vgprValuC+3]          // copy MI out reg to vreg[3]
v_mov_b32 v[vgprValuC+22], v[vgprValuC+4]          // copy MI out reg to vreg[4]
v_mov_b32 v[vgprValuC+23], v[vgprValuC+5]          // copy MI out reg to vreg[5]
v_mov_b32 v[vgprValuC+24], v[vgprValuC+6]          // copy MI out reg to vreg[6]
v_mov_b32 v[vgprValuC+25], v[vgprValuC+7]          // copy MI out reg to vreg[7]
/* apply mask, calc new C and issue writes */
buffer_store_b32 v18, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
buffer_store_b32 v19, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:8 // store D
buffer_store_b32 v20, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:16 // store D
buffer_store_b32 v21, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:24 // store D
buffer_store_b32 v22, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:32 // store D
buffer_store_b32 v23, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:40 // store D
buffer_store_b32 v24, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:48 // store D
buffer_store_b32 v25, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:56 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End                              // jump to end
label_GW_End:

s_endpgm                                           // Kernel End
label_OptNLL_End:

/******************************************/
/* Ord. NoLoadLoop - Begin                */
/******************************************/

/* iter 0 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:0, lwEndMfmaIndex:0  */
/*  numMfmaForLR:0, syncPlrMfmaIndex:1  */
/*  mfmaIndex:0  */
ds_load_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:1024 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:1088 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_load_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:1216 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=1 iui=0
ds_load_u16 v[vgprValuA_X1_I0+2], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=4 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+2], v[vgprLocalReadAddrA] offset:1344 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=5 oIdx=0 buffer=1 iui=0
ds_load_u16 v[vgprValuA_X1_I0+3], v[vgprLocalReadAddrA] offset:1408 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=6 oIdx=0 buffer=1 iui=0
ds_load_u16_d16_hi v[vgprValuA_X1_I0+3], v[vgprLocalReadAddrA] offset:1472 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=7 oIdx=0 buffer=1 iui=0
ds_load_b128 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+3], v[vgprLocalReadAddrB] offset:64 // L -> Reg lro=32 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_load_b128 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+3], v[vgprLocalReadAddrB] offset:66 // L -> Reg lro=32 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
s_waitcnt lgkmcnt(10)                              // wait for prior local read local write old=0, new=10 newLW=0 newLR=10
v_swmmac_f32_16x16x32_f16 v[0:7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuMetadata+0] // left value = v[0+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=8 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */

/* iter 1 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:0, lwEndMfmaIndex:0  */
/*  numMfmaForLR:0, syncPlrMfmaIndex:1  */
/*  mfmaIndex:1  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
v_swmmac_f32_16x16x32_f16 v[0:7], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+3], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+7], v[vgprValuMetadata+1] // left value = v[0+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=8 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=2 */
label_PrefetchGlobalLastIterEnd:

/******************************************/
/* Tail Loop                              */
/******************************************/

/* Tail: add ValuA/B vgpr buffer [10...59) to pool */

/* local write reset offsets a */

/* reset metadata write offset to 0 */
v_and_b32 v[vgprLocalWriteAddrA], 0xf01fff, v[vgprLocalWriteAddrA] // reset to Red

/* reset metadata write offset to 0 */

/* local write reset offsets b */
v_and_b32 v[vgprLocalWriteAddrB], 0xf01fff, v[vgprLocalWriteAddrB] // reset to Red

// numIterL = (((sizeL % LOCAL_DEPTHU) + LOCAL_SPLITU - 1) / LOCAL_SPLITU)
s_and_b32 s[sgprLoopCounterL], 63, s[sgprSizesSum+0] // s[sgprLoopCounterL] = s[sgprSizesSum+0] % 64
s_cmp_eq_u32 s[sgprLoopCounterL], 0x0              // numIterL == 0
s_mov_b32 s[sgprOrigLoopCounter], 0                // repurpose to count each localRead increment
s_cbranch_scc1 label_SkipTailLoopL                 // skip to end of tail loop b/c numIter==0

/* remove stagger offsets for tail loop */
s_sub_i32 s72, 3, s[sgprStaggerUIter]
s_mul_hi_i32 s73, s72, s[sgprGlobalReadIncsA+0]    // start offset S in bytes
s_mul_i32 s72, s72, s[sgprGlobalReadIncsA+0]       // start offset S in bytes
s_sub_u32 s72, s72, s[sgprWrapUA]                  // S - WrapU
s_subb_u32 s73, s73, s[sgprWrapUA+1]               // S - WrapU
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_i32 s74, 64, s[sgprGSU]
s_lshr_b32 s74, s74, 0x3
s_sub_i32 s72, 3, s[sgprStaggerUIter]
s_mul_hi_i32 s73, s72, s74                         // start offset S in bytes
s_mul_i32 s72, s72, s74                            // start offset S in bytes
s_sub_u32 s72, s72, s[sgprWrapUMetadata]           // S - WrapU
s_subb_u32 s73, s73, s[sgprWrapUMetadata+1]        // S - WrapU
s_add_u32 s[sgprSrdMetadata+0], s[sgprSrdMetadata+0], s72 // gra SRD += incSparse(lower)
s_addc_u32 s[sgprSrdMetadata+1], s[sgprSrdMetadata+1], s73 // gra SRD += incSparse(uppper)
s_sub_u32 s[sgprShadowLimitMetadata+0], s[sgprShadowLimitMetadata+0], s72 // limit -= incSparse(lower)
s_subb_u32 s[sgprShadowLimitMetadata+1], s[sgprShadowLimitMetadata+1], s73 // limit -= incSparse(uppper)
s_cmp_eq_u32 s[sgprShadowLimitMetadata+1], 0       // are we within 2^32?
s_cselect_b32 s[sgprSrdMetadata+2], s[sgprShadowLimitMetadata+0], BufferLimit // Move shadow to real if we are within 2^32
s_sub_i32 s72, 3, s[sgprStaggerUIter]
s_mul_hi_i32 s73, s72, s[sgprGlobalReadIncsB+0]    // start offset S in bytes
s_mul_i32 s72, s72, s[sgprGlobalReadIncsB+0]       // start offset S in bytes
s_sub_u32 s72, s72, s[sgprWrapUB]                  // S - WrapU
s_subb_u32 s73, s73, s[sgprWrapUB+1]               // S - WrapU
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32

/* Update M0 for DTLDS */

/* global read A */
/* g2l=0, load component 0 */
buffer_load_b32 v[vgprG2LA+0+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // load packed 2X half buffer value
/* g2l=1, load component 0 */
buffer_load_b32 v[vgprG2LA+1+0], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // load packed 2X half buffer value
/* g2l=2, load component 0 */
buffer_load_b32 v[vgprG2LA+2+0], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // load packed 2X half buffer value
/* g2l=3, load component 0 */
buffer_load_b32 v[vgprG2LA+3+0], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // load packed 2X half buffer value
/* g2l=4, load component 0 */
buffer_load_b32 v[vgprG2LA+4+0], v[vgprGlobalReadOffsetA+4], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // load packed 2X half buffer value
/* g2l=5, load component 0 */
buffer_load_b32 v[vgprG2LA+5+0], v[vgprGlobalReadOffsetA+5], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // load packed 2X half buffer value
/* g2l=6, load component 0 */
buffer_load_b32 v[vgprG2LA+6+0], v[vgprGlobalReadOffsetA+6], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // load packed 2X half buffer value
/* g2l=7, load component 0 */
buffer_load_b32 v[vgprG2LA+7+0], v[vgprGlobalReadOffsetA+7], s[sgprSrdA:sgprSrdA+3], null offen offset:0 // load packed 2X half buffer value
buffer_load_d16_u8 v[vgprValuMetadata+4+0], v[vgprGlobalReadOffsetMetadata+0], s[sgprSrdMetadata:sgprSrdMetadata+3], null offen offset:0 // G -> Reg ValuMetadata
buffer_load_d16_u8 v10, v[vgprGlobalReadOffsetMetadata+0], s[sgprSrdMetadata:sgprSrdMetadata+3], null offen offset:1 // G -> Reg ValuMetadata
s_waitcnt vmcnt(0)
v_lshlrev_b32 v10, 0x8, v10                        // shift left to higher 8 bits
v_or_b32 v[vgprValuMetadata+4+0], v[vgprValuMetadata+4+0], v10 // pack 2 bytes
buffer_load_d16_u8 v[vgprValuMetadata+4+1], v[vgprGlobalReadOffsetMetadata+0], s[sgprSrdMetadata:sgprSrdMetadata+3], null offen offset:4 // G -> Reg ValuMetadata
buffer_load_d16_u8 v10, v[vgprGlobalReadOffsetMetadata+0], s[sgprSrdMetadata:sgprSrdMetadata+3], null offen offset:5 // G -> Reg ValuMetadata
s_waitcnt vmcnt(0)
v_lshlrev_b32 v10, 0x8, v10                        // shift left to higher 8 bits
v_or_b32 v[vgprValuMetadata+4+1], v[vgprValuMetadata+4+1], v10 // pack 2 bytes

/* Update M0 for DTLDS */

/* global read B */
/* g2l=0, load component 0 */
buffer_load_d16_b16 v[vgprG2LB+0+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=0, load component 0 */
buffer_load_d16_hi_b16 v[vgprG2LB+0+0], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=1, load component 0 */
buffer_load_d16_b16 v[vgprG2LB+1+0], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=1, load component 0 */
buffer_load_d16_hi_b16 v[vgprG2LB+1+0], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=2, load component 0 */
buffer_load_d16_b16 v[vgprG2LB+2+0], v[vgprGlobalReadOffsetB+4], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=2, load component 0 */
buffer_load_d16_hi_b16 v[vgprG2LB+2+0], v[vgprGlobalReadOffsetB+5], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=3, load component 0 */
buffer_load_d16_b16 v[vgprG2LB+3+0], v[vgprGlobalReadOffsetB+6], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=3, load component 0 */
buffer_load_d16_hi_b16 v[vgprG2LB+3+0], v[vgprGlobalReadOffsetB+7], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=4, load component 0 */
buffer_load_d16_b16 v[vgprG2LB+4+0], v[vgprGlobalReadOffsetB+8], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=4, load component 0 */
buffer_load_d16_hi_b16 v[vgprG2LB+4+0], v[vgprGlobalReadOffsetB+9], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=5, load component 0 */
buffer_load_d16_b16 v[vgprG2LB+5+0], v[vgprGlobalReadOffsetB+10], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=5, load component 0 */
buffer_load_d16_hi_b16 v[vgprG2LB+5+0], v[vgprGlobalReadOffsetB+11], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=6, load component 0 */
buffer_load_d16_b16 v[vgprG2LB+6+0], v[vgprGlobalReadOffsetB+12], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=6, load component 0 */
buffer_load_d16_hi_b16 v[vgprG2LB+6+0], v[vgprGlobalReadOffsetB+13], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=7, load component 0 */
buffer_load_d16_b16 v[vgprG2LB+7+0], v[vgprGlobalReadOffsetB+14], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=7, load component 0 */
buffer_load_d16_hi_b16 v[vgprG2LB+7+0], v[vgprGlobalReadOffsetB+15], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=8, load component 0 */
buffer_load_d16_b16 v[vgprG2LB+8+0], v[vgprGlobalReadOffsetB+16], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=8, load component 0 */
buffer_load_d16_hi_b16 v[vgprG2LB+8+0], v[vgprGlobalReadOffsetB+17], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=9, load component 0 */
buffer_load_d16_b16 v[vgprG2LB+9+0], v[vgprGlobalReadOffsetB+18], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=9, load component 0 */
buffer_load_d16_hi_b16 v[vgprG2LB+9+0], v[vgprGlobalReadOffsetB+19], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=10, load component 0 */
buffer_load_d16_b16 v[vgprG2LB+10+0], v[vgprGlobalReadOffsetB+20], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=10, load component 0 */
buffer_load_d16_hi_b16 v[vgprG2LB+10+0], v[vgprGlobalReadOffsetB+21], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=11, load component 0 */
buffer_load_d16_b16 v[vgprG2LB+11+0], v[vgprGlobalReadOffsetB+22], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=11, load component 0 */
buffer_load_d16_hi_b16 v[vgprG2LB+11+0], v[vgprGlobalReadOffsetB+23], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=12, load component 0 */
buffer_load_d16_b16 v[vgprG2LB+12+0], v[vgprGlobalReadOffsetB+24], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=12, load component 0 */
buffer_load_d16_hi_b16 v[vgprG2LB+12+0], v[vgprGlobalReadOffsetB+25], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=13, load component 0 */
buffer_load_d16_b16 v[vgprG2LB+13+0], v[vgprGlobalReadOffsetB+26], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=13, load component 0 */
buffer_load_d16_hi_b16 v[vgprG2LB+13+0], v[vgprGlobalReadOffsetB+27], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=14, load component 0 */
buffer_load_d16_b16 v[vgprG2LB+14+0], v[vgprGlobalReadOffsetB+28], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=14, load component 0 */
buffer_load_d16_hi_b16 v[vgprG2LB+14+0], v[vgprGlobalReadOffsetB+29], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=15, load component 0 */
buffer_load_d16_b16 v[vgprG2LB+15+0], v[vgprGlobalReadOffsetB+30], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
/* g2l=15, load component 0 */
buffer_load_d16_hi_b16 v[vgprG2LB+15+0], v[vgprGlobalReadOffsetB+31], s[sgprSrdB:sgprSrdB+3], null offen offset:0 // load one buffer value
s_waitcnt vmcnt(0)                                 // 2wait for global read
// Skip barrier: NumThreads=32

/* local write a */
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+0] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+1] offset:256 // lwoA_0_0_1_0 = (0*LSCA) + (1*LSPA)(*MT0I+PAD) = 256
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+2] offset:512 // lwoA_0_0_2_0 = (0*LSCA) + (2*LSPA)(*MT0I+PAD) = 512
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+3] offset:768 // lwoA_0_0_3_0 = (0*LSCA) + (3*LSPA)(*MT0I+PAD) = 768
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+4] offset:1024 // lwoA_0_0_4_0 = (0*LSCA) + (4*LSPA)(*MT0I+PAD) = 1024
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+5] offset:1280 // lwoA_0_0_5_0 = (0*LSCA) + (5*LSPA)(*MT0I+PAD) = 1280
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+6] offset:1536 // lwoA_0_0_6_0 = (0*LSCA) + (6*LSPA)(*MT0I+PAD) = 1536
ds_store_b32 v[vgprLocalWriteAddrA], v[vgprG2LA+7] offset:1792 // lwoA_0_0_7_0 = (0*LSCA) + (7*LSPA)(*MT0I+PAD) = 1792
v_mov_b32 v[vgprValuMetadata+0+0], v[vgprValuMetadata+4+0] // copy ValuMetadata from blk2
v_mov_b32 v[vgprValuMetadata+0+1], v[vgprValuMetadata+4+1] // copy ValuMetadata from blk2

/* local write b */
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:64 // lwoB_1_0_0_0 = (1*LSCB)*(MT1J+PAD) + (0*LSPB) = 64
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:160 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 160
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:224 // lwoB_1_0_1_0 = (1*LSCB)*(MT1J+PAD) + (1*LSPB) = 224
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:320 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 320
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:384 // lwoB_1_0_2_0 = (1*LSCB)*(MT1J+PAD) + (2*LSPB) = 384
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:480 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 480
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:544 // lwoB_1_0_3_0 = (1*LSCB)*(MT1J+PAD) + (3*LSPB) = 544
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:640 // lwoB_0_0_4_0 = (0*LSCB)*(MT1J+PAD) + (4*LSPB) = 640
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:704 // lwoB_1_0_4_0 = (1*LSCB)*(MT1J+PAD) + (4*LSPB) = 704
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:800 // lwoB_0_0_5_0 = (0*LSCB)*(MT1J+PAD) + (5*LSPB) = 800
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:864 // lwoB_1_0_5_0 = (1*LSCB)*(MT1J+PAD) + (5*LSPB) = 864
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:960 // lwoB_0_0_6_0 = (0*LSCB)*(MT1J+PAD) + (6*LSPB) = 960
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:1024 // lwoB_1_0_6_0 = (1*LSCB)*(MT1J+PAD) + (6*LSPB) = 1024
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:1120 // lwoB_0_0_7_0 = (0*LSCB)*(MT1J+PAD) + (7*LSPB) = 1120
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:1184 // lwoB_1_0_7_0 = (1*LSCB)*(MT1J+PAD) + (7*LSPB) = 1184
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+8] offset:1280 // lwoB_0_0_8_0 = (0*LSCB)*(MT1J+PAD) + (8*LSPB) = 1280
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+8] offset:1344 // lwoB_1_0_8_0 = (1*LSCB)*(MT1J+PAD) + (8*LSPB) = 1344
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+9] offset:1440 // lwoB_0_0_9_0 = (0*LSCB)*(MT1J+PAD) + (9*LSPB) = 1440
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+9] offset:1504 // lwoB_1_0_9_0 = (1*LSCB)*(MT1J+PAD) + (9*LSPB) = 1504
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+10] offset:1600 // lwoB_0_0_10_0 = (0*LSCB)*(MT1J+PAD) + (10*LSPB) = 1600
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+10] offset:1664 // lwoB_1_0_10_0 = (1*LSCB)*(MT1J+PAD) + (10*LSPB) = 1664
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+11] offset:1760 // lwoB_0_0_11_0 = (0*LSCB)*(MT1J+PAD) + (11*LSPB) = 1760
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+11] offset:1824 // lwoB_1_0_11_0 = (1*LSCB)*(MT1J+PAD) + (11*LSPB) = 1824
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+12] offset:1920 // lwoB_0_0_12_0 = (0*LSCB)*(MT1J+PAD) + (12*LSPB) = 1920
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+12] offset:1984 // lwoB_1_0_12_0 = (1*LSCB)*(MT1J+PAD) + (12*LSPB) = 1984
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+13] offset:2080 // lwoB_0_0_13_0 = (0*LSCB)*(MT1J+PAD) + (13*LSPB) = 2080
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+13] offset:2144 // lwoB_1_0_13_0 = (1*LSCB)*(MT1J+PAD) + (13*LSPB) = 2144
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+14] offset:2240 // lwoB_0_0_14_0 = (0*LSCB)*(MT1J+PAD) + (14*LSPB) = 2240
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+14] offset:2304 // lwoB_1_0_14_0 = (1*LSCB)*(MT1J+PAD) + (14*LSPB) = 2304
ds_store_b16 v[vgprLocalWriteAddrB], v[vgprG2LB+15] offset:2400 // lwoB_0_0_15_0 = (0*LSCB)*(MT1J+PAD) + (15*LSPB) = 2400
ds_store_b16_d16_hi v[vgprLocalWriteAddrB], v[vgprG2LB+15] offset:2464 // lwoB_1_0_15_0 = (1*LSCB)*(MT1J+PAD) + (15*LSPB) = 2464

/* Recalc local read offsets */
s_waitcnt lgkmcnt(0)                               // 5wait for local write
// Skip barrier: NumThreads=32

/* local read reset offsets a */

/* localReadResetOffsets */
/* handled internally */
v_and_b32 v[vgprLocalReadAddrA], 0x1fff, v[vgprLocalReadAddrA] // reset Red,Blk -> Red

/* local read reset offsets b */

/* localReadResetOffsets */
/* handled internally */
v_and_b32 v[vgprLocalReadAddrB], 0x1fff, v[vgprLocalReadAddrB] // reset Red,Blk -> Red

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */

/* tail loop: macs */
label_TailLoopBeginL:

/* Tail: remove ValuA/B vgpr buffer [10...49) from pool */

/* Tail: add address/G2L vgpr [49...118) to pool */

/* local read a */
ds_load_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:192 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:320 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:448 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0

/* local read b */
ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:2 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0

/* local read inc a */
s_mov_b32 s71, 0x400                               // inc
v_add_co_u32 v[vgprLocalReadAddrA], vcc_lo, s71, v[vgprLocalReadAddrA] // lrA += 1024 (LSU*(MT+PAD)*bpe)

/* local read inc b */
s_mov_b32 s71, 0x40                                // inc
v_add_co_u32 v[vgprLocalReadAddrB], vcc_lo, s71, v[vgprLocalReadAddrB] // lrB += 64 (LSU*bpe)
s_waitcnt lgkmcnt(0)                               // 4wait for local read
s_sub_i32 s72, s[sgprLoopCounterL], 1              // calculate 64bit groups index
s_lshr_b32 s73, s72, 2                             // calculate 64bit groups index
s_and_b32 s72, s72, 3                              // calculate shift value
s_sub_i32 s72, 3, s72                              // calculate shift value
s_lshl_b32 s72, s72, 4                             // calculate shift value
v_cmp_eq_i32 s74, s73, 0                           // handle this 64bit group: part 1
v_lshlrev_b64 v[50:51], s72, v[vgprValuA_X0_I0+0+0:vgprValuA_X0_I0+0+0+1] // shfit for ValuA[0:1]
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0], v[vgprValuA_X0_I0+0+0+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+1], v[vgprValuA_X0_I0+0+0+1], v51, s74 // shift if in this 64b group
v_lshlrev_b64 v[50:51], s72, v[vgprValuB_X0_I0+0+0:vgprValuB_X0_I0+0+0+1] // shfit for ValuB[0:1]
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+1], v[vgprValuB_X0_I0+0+0+1], v51, s74 // shift if in this 64b group
v_cmp_eq_i32 s74, s73, 1                           // handle this 64bit group: part 1
v_lshlrev_b64 v[50:51], s72, v[vgprValuA_X0_I0+0+2:vgprValuA_X0_I0+0+2+1] // shfit for ValuA[2:3]
v_cndmask_b32 v[vgprValuA_X0_I0+0+2+0], v[vgprValuA_X0_I0+0+2+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+2+1], v[vgprValuA_X0_I0+0+2+1], v51, s74 // shift if in this 64b group
v_lshlrev_b64 v[50:51], s72, v[vgprValuB_X0_I0+0+2:vgprValuB_X0_I0+0+2+1] // shfit for ValuB[2:3]
v_cndmask_b32 v[vgprValuB_X0_I0+0+2+0], v[vgprValuB_X0_I0+0+2+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+2+1], v[vgprValuB_X0_I0+0+2+1], v51, s74 // shift if in this 64b group
v_cmp_lt_i32 s74, s73, 1                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+2+0], v[vgprValuA_X0_I0+0+2+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+2+1], v[vgprValuA_X0_I0+0+2+1], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+2+0], v[vgprValuB_X0_I0+0+2+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+2+1], v[vgprValuB_X0_I0+0+2+1], 0, s74 // shift if in this 64b group
v_cmp_eq_i32 s74, s73, 2                           // handle this 64bit group: part 1
v_lshlrev_b64 v[50:51], s72, v[vgprValuA_X0_I0+0+4:vgprValuA_X0_I0+0+4+1] // shfit for ValuA[4:5]
v_cndmask_b32 v[vgprValuA_X0_I0+0+4+0], v[vgprValuA_X0_I0+0+4+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+4+1], v[vgprValuA_X0_I0+0+4+1], v51, s74 // shift if in this 64b group
v_lshlrev_b64 v[50:51], s72, v[vgprValuB_X0_I0+0+4:vgprValuB_X0_I0+0+4+1] // shfit for ValuB[4:5]
v_cndmask_b32 v[vgprValuB_X0_I0+0+4+0], v[vgprValuB_X0_I0+0+4+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+4+1], v[vgprValuB_X0_I0+0+4+1], v51, s74 // shift if in this 64b group
v_cmp_lt_i32 s74, s73, 2                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+4+0], v[vgprValuA_X0_I0+0+4+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+4+1], v[vgprValuA_X0_I0+0+4+1], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+4+0], v[vgprValuB_X0_I0+0+4+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+4+1], v[vgprValuB_X0_I0+0+4+1], 0, s74 // shift if in this 64b group
v_cmp_eq_i32 s74, s73, 3                           // handle this 64bit group: part 1
v_lshlrev_b64 v[50:51], s72, v[vgprValuA_X0_I0+0+6:vgprValuA_X0_I0+0+6+1] // shfit for ValuA[6:7]
v_cndmask_b32 v[vgprValuA_X0_I0+0+6+0], v[vgprValuA_X0_I0+0+6+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+6+1], v[vgprValuA_X0_I0+0+6+1], v51, s74 // shift if in this 64b group
v_lshlrev_b64 v[50:51], s72, v[vgprValuB_X0_I0+0+6:vgprValuB_X0_I0+0+6+1] // shfit for ValuB[6:7]
v_cndmask_b32 v[vgprValuB_X0_I0+0+6+0], v[vgprValuB_X0_I0+0+6+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+6+1], v[vgprValuB_X0_I0+0+6+1], v51, s74 // shift if in this 64b group
v_cmp_lt_i32 s74, s73, 3                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+6+0], v[vgprValuA_X0_I0+0+6+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+6+1], v[vgprValuA_X0_I0+0+6+1], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+6+0], v[vgprValuB_X0_I0+0+6+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+6+1], v[vgprValuB_X0_I0+0+6+1], 0, s74 // shift if in this 64b group
v_cmp_eq_i32 s74, s73, 4                           // handle this 64bit group: part 1
v_lshlrev_b64 v[50:51], s72, v[vgprValuA_X0_I0+0+8:vgprValuA_X0_I0+0+8+1] // shfit for ValuA[8:9]
v_cndmask_b32 v[vgprValuA_X0_I0+0+8+0], v[vgprValuA_X0_I0+0+8+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+8+1], v[vgprValuA_X0_I0+0+8+1], v51, s74 // shift if in this 64b group
v_lshlrev_b64 v[50:51], s72, v[vgprValuB_X0_I0+0+8:vgprValuB_X0_I0+0+8+1] // shfit for ValuB[8:9]
v_cndmask_b32 v[vgprValuB_X0_I0+0+8+0], v[vgprValuB_X0_I0+0+8+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+8+1], v[vgprValuB_X0_I0+0+8+1], v51, s74 // shift if in this 64b group
v_cmp_lt_i32 s74, s73, 4                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+8+0], v[vgprValuA_X0_I0+0+8+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+8+1], v[vgprValuA_X0_I0+0+8+1], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+8+0], v[vgprValuB_X0_I0+0+8+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+8+1], v[vgprValuB_X0_I0+0+8+1], 0, s74 // shift if in this 64b group
v_cmp_eq_i32 s74, s73, 5                           // handle this 64bit group: part 1
v_lshlrev_b64 v[50:51], s72, v[vgprValuA_X0_I0+0+10:vgprValuA_X0_I0+0+10+1] // shfit for ValuA[10:11]
v_cndmask_b32 v[vgprValuA_X0_I0+0+10+0], v[vgprValuA_X0_I0+0+10+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+10+1], v[vgprValuA_X0_I0+0+10+1], v51, s74 // shift if in this 64b group
v_lshlrev_b64 v[50:51], s72, v[vgprValuB_X0_I0+0+10:vgprValuB_X0_I0+0+10+1] // shfit for ValuB[10:11]
v_cndmask_b32 v[vgprValuB_X0_I0+0+10+0], v[vgprValuB_X0_I0+0+10+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+10+1], v[vgprValuB_X0_I0+0+10+1], v51, s74 // shift if in this 64b group
v_cmp_lt_i32 s74, s73, 5                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+10+0], v[vgprValuA_X0_I0+0+10+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+10+1], v[vgprValuA_X0_I0+0+10+1], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+10+0], v[vgprValuB_X0_I0+0+10+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+10+1], v[vgprValuB_X0_I0+0+10+1], 0, s74 // shift if in this 64b group
v_cmp_eq_i32 s74, s73, 6                           // handle this 64bit group: part 1
v_lshlrev_b64 v[50:51], s72, v[vgprValuA_X0_I0+0+12:vgprValuA_X0_I0+0+12+1] // shfit for ValuA[12:13]
v_cndmask_b32 v[vgprValuA_X0_I0+0+12+0], v[vgprValuA_X0_I0+0+12+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+12+1], v[vgprValuA_X0_I0+0+12+1], v51, s74 // shift if in this 64b group
v_lshlrev_b64 v[50:51], s72, v[vgprValuB_X0_I0+0+12:vgprValuB_X0_I0+0+12+1] // shfit for ValuB[12:13]
v_cndmask_b32 v[vgprValuB_X0_I0+0+12+0], v[vgprValuB_X0_I0+0+12+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+12+1], v[vgprValuB_X0_I0+0+12+1], v51, s74 // shift if in this 64b group
v_cmp_lt_i32 s74, s73, 6                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+12+0], v[vgprValuA_X0_I0+0+12+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+12+1], v[vgprValuA_X0_I0+0+12+1], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+12+0], v[vgprValuB_X0_I0+0+12+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+12+1], v[vgprValuB_X0_I0+0+12+1], 0, s74 // shift if in this 64b group
v_cmp_eq_i32 s74, s73, 7                           // handle this 64bit group: part 1
v_lshlrev_b64 v[50:51], s72, v[vgprValuA_X0_I0+0+14:vgprValuA_X0_I0+0+14+1] // shfit for ValuA[14:15]
v_cndmask_b32 v[vgprValuA_X0_I0+0+14+0], v[vgprValuA_X0_I0+0+14+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+14+1], v[vgprValuA_X0_I0+0+14+1], v51, s74 // shift if in this 64b group
v_lshlrev_b64 v[50:51], s72, v[vgprValuB_X0_I0+0+14:vgprValuB_X0_I0+0+14+1] // shfit for ValuB[14:15]
v_cndmask_b32 v[vgprValuB_X0_I0+0+14+0], v[vgprValuB_X0_I0+0+14+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+14+1], v[vgprValuB_X0_I0+0+14+1], v51, s74 // shift if in this 64b group
v_cmp_lt_i32 s74, s73, 7                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+14+0], v[vgprValuA_X0_I0+0+14+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+14+1], v[vgprValuA_X0_I0+0+14+1], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+14+0], v[vgprValuB_X0_I0+0+14+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+14+1], v[vgprValuB_X0_I0+0+14+1], 0, s74 // shift if in this 64b group
s_nop 1
v_swmmac_f32_16x16x32_f16 v[0:7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuMetadata+0] // left value = v[0+0:7+0]

/* closeLoop loopL finalLoop=0 tailLoop=1 */
s_sub_i32 s[sgprLoopCounterL], s[sgprLoopCounterL], 0x20 // dec counterL (tailLoop)
s_add_u32 s[sgprOrigLoopCounter], s[sgprOrigLoopCounter], 0x20 // inc counterL
s_cmp_le_i32 s[sgprLoopCounterL], 0x0              // counterL<=0
s_cbranch_scc1 label_TailLoopEndL                  // exit LoopL

/* local read a */
ds_load_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:192 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=4 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+2], v[vgprLocalReadAddrA] offset:320 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=5 oIdx=0 buffer=0 iui=0
ds_load_u16 v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=6 oIdx=0 buffer=0 iui=0
ds_load_u16_d16_hi v[vgprValuA_X0_I0+3], v[vgprLocalReadAddrA] offset:448 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=7 oIdx=0 buffer=0 iui=0

/* local read b */
ds_load_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_load_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB] offset:2 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0

/* local read inc a */
s_mov_b32 s71, 0x400                               // inc
v_add_co_u32 v[vgprLocalReadAddrA], vcc_lo, s71, v[vgprLocalReadAddrA] // lrA += 1024 (LSU*(MT+PAD)*bpe)

/* local read inc b */
s_mov_b32 s71, 0x40                                // inc
v_add_co_u32 v[vgprLocalReadAddrB], vcc_lo, s71, v[vgprLocalReadAddrB] // lrB += 64 (LSU*bpe)
s_waitcnt lgkmcnt(0)                               // 4wait for local read
s_sub_i32 s72, s[sgprLoopCounterL], 1              // calculate 64bit groups index
s_lshr_b32 s73, s72, 2                             // calculate 64bit groups index
s_and_b32 s72, s72, 3                              // calculate shift value
s_sub_i32 s72, 3, s72                              // calculate shift value
s_lshl_b32 s72, s72, 4                             // calculate shift value
v_cmp_eq_i32 s74, s73, 0                           // handle this 64bit group: part 1
v_lshlrev_b64 v[50:51], s72, v[vgprValuA_X0_I0+0+0:vgprValuA_X0_I0+0+0+1] // shfit for ValuA[0:1]
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0], v[vgprValuA_X0_I0+0+0+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+1], v[vgprValuA_X0_I0+0+0+1], v51, s74 // shift if in this 64b group
v_lshlrev_b64 v[50:51], s72, v[vgprValuB_X0_I0+0+0:vgprValuB_X0_I0+0+0+1] // shfit for ValuB[0:1]
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0], v[vgprValuB_X0_I0+0+0+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+1], v[vgprValuB_X0_I0+0+0+1], v51, s74 // shift if in this 64b group
v_cmp_eq_i32 s74, s73, 1                           // handle this 64bit group: part 1
v_lshlrev_b64 v[50:51], s72, v[vgprValuA_X0_I0+0+2:vgprValuA_X0_I0+0+2+1] // shfit for ValuA[2:3]
v_cndmask_b32 v[vgprValuA_X0_I0+0+2+0], v[vgprValuA_X0_I0+0+2+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+2+1], v[vgprValuA_X0_I0+0+2+1], v51, s74 // shift if in this 64b group
v_lshlrev_b64 v[50:51], s72, v[vgprValuB_X0_I0+0+2:vgprValuB_X0_I0+0+2+1] // shfit for ValuB[2:3]
v_cndmask_b32 v[vgprValuB_X0_I0+0+2+0], v[vgprValuB_X0_I0+0+2+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+2+1], v[vgprValuB_X0_I0+0+2+1], v51, s74 // shift if in this 64b group
v_cmp_lt_i32 s74, s73, 1                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+2+0], v[vgprValuA_X0_I0+0+2+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+2+1], v[vgprValuA_X0_I0+0+2+1], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+2+0], v[vgprValuB_X0_I0+0+2+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+2+1], v[vgprValuB_X0_I0+0+2+1], 0, s74 // shift if in this 64b group
v_cmp_eq_i32 s74, s73, 2                           // handle this 64bit group: part 1
v_lshlrev_b64 v[50:51], s72, v[vgprValuA_X0_I0+0+4:vgprValuA_X0_I0+0+4+1] // shfit for ValuA[4:5]
v_cndmask_b32 v[vgprValuA_X0_I0+0+4+0], v[vgprValuA_X0_I0+0+4+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+4+1], v[vgprValuA_X0_I0+0+4+1], v51, s74 // shift if in this 64b group
v_lshlrev_b64 v[50:51], s72, v[vgprValuB_X0_I0+0+4:vgprValuB_X0_I0+0+4+1] // shfit for ValuB[4:5]
v_cndmask_b32 v[vgprValuB_X0_I0+0+4+0], v[vgprValuB_X0_I0+0+4+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+4+1], v[vgprValuB_X0_I0+0+4+1], v51, s74 // shift if in this 64b group
v_cmp_lt_i32 s74, s73, 2                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+4+0], v[vgprValuA_X0_I0+0+4+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+4+1], v[vgprValuA_X0_I0+0+4+1], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+4+0], v[vgprValuB_X0_I0+0+4+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+4+1], v[vgprValuB_X0_I0+0+4+1], 0, s74 // shift if in this 64b group
v_cmp_eq_i32 s74, s73, 3                           // handle this 64bit group: part 1
v_lshlrev_b64 v[50:51], s72, v[vgprValuA_X0_I0+0+6:vgprValuA_X0_I0+0+6+1] // shfit for ValuA[6:7]
v_cndmask_b32 v[vgprValuA_X0_I0+0+6+0], v[vgprValuA_X0_I0+0+6+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+6+1], v[vgprValuA_X0_I0+0+6+1], v51, s74 // shift if in this 64b group
v_lshlrev_b64 v[50:51], s72, v[vgprValuB_X0_I0+0+6:vgprValuB_X0_I0+0+6+1] // shfit for ValuB[6:7]
v_cndmask_b32 v[vgprValuB_X0_I0+0+6+0], v[vgprValuB_X0_I0+0+6+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+6+1], v[vgprValuB_X0_I0+0+6+1], v51, s74 // shift if in this 64b group
v_cmp_lt_i32 s74, s73, 3                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+6+0], v[vgprValuA_X0_I0+0+6+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+6+1], v[vgprValuA_X0_I0+0+6+1], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+6+0], v[vgprValuB_X0_I0+0+6+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+6+1], v[vgprValuB_X0_I0+0+6+1], 0, s74 // shift if in this 64b group
v_cmp_eq_i32 s74, s73, 4                           // handle this 64bit group: part 1
v_lshlrev_b64 v[50:51], s72, v[vgprValuA_X0_I0+0+8:vgprValuA_X0_I0+0+8+1] // shfit for ValuA[8:9]
v_cndmask_b32 v[vgprValuA_X0_I0+0+8+0], v[vgprValuA_X0_I0+0+8+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+8+1], v[vgprValuA_X0_I0+0+8+1], v51, s74 // shift if in this 64b group
v_lshlrev_b64 v[50:51], s72, v[vgprValuB_X0_I0+0+8:vgprValuB_X0_I0+0+8+1] // shfit for ValuB[8:9]
v_cndmask_b32 v[vgprValuB_X0_I0+0+8+0], v[vgprValuB_X0_I0+0+8+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+8+1], v[vgprValuB_X0_I0+0+8+1], v51, s74 // shift if in this 64b group
v_cmp_lt_i32 s74, s73, 4                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+8+0], v[vgprValuA_X0_I0+0+8+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+8+1], v[vgprValuA_X0_I0+0+8+1], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+8+0], v[vgprValuB_X0_I0+0+8+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+8+1], v[vgprValuB_X0_I0+0+8+1], 0, s74 // shift if in this 64b group
v_cmp_eq_i32 s74, s73, 5                           // handle this 64bit group: part 1
v_lshlrev_b64 v[50:51], s72, v[vgprValuA_X0_I0+0+10:vgprValuA_X0_I0+0+10+1] // shfit for ValuA[10:11]
v_cndmask_b32 v[vgprValuA_X0_I0+0+10+0], v[vgprValuA_X0_I0+0+10+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+10+1], v[vgprValuA_X0_I0+0+10+1], v51, s74 // shift if in this 64b group
v_lshlrev_b64 v[50:51], s72, v[vgprValuB_X0_I0+0+10:vgprValuB_X0_I0+0+10+1] // shfit for ValuB[10:11]
v_cndmask_b32 v[vgprValuB_X0_I0+0+10+0], v[vgprValuB_X0_I0+0+10+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+10+1], v[vgprValuB_X0_I0+0+10+1], v51, s74 // shift if in this 64b group
v_cmp_lt_i32 s74, s73, 5                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+10+0], v[vgprValuA_X0_I0+0+10+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+10+1], v[vgprValuA_X0_I0+0+10+1], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+10+0], v[vgprValuB_X0_I0+0+10+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+10+1], v[vgprValuB_X0_I0+0+10+1], 0, s74 // shift if in this 64b group
v_cmp_eq_i32 s74, s73, 6                           // handle this 64bit group: part 1
v_lshlrev_b64 v[50:51], s72, v[vgprValuA_X0_I0+0+12:vgprValuA_X0_I0+0+12+1] // shfit for ValuA[12:13]
v_cndmask_b32 v[vgprValuA_X0_I0+0+12+0], v[vgprValuA_X0_I0+0+12+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+12+1], v[vgprValuA_X0_I0+0+12+1], v51, s74 // shift if in this 64b group
v_lshlrev_b64 v[50:51], s72, v[vgprValuB_X0_I0+0+12:vgprValuB_X0_I0+0+12+1] // shfit for ValuB[12:13]
v_cndmask_b32 v[vgprValuB_X0_I0+0+12+0], v[vgprValuB_X0_I0+0+12+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+12+1], v[vgprValuB_X0_I0+0+12+1], v51, s74 // shift if in this 64b group
v_cmp_lt_i32 s74, s73, 6                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+12+0], v[vgprValuA_X0_I0+0+12+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+12+1], v[vgprValuA_X0_I0+0+12+1], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+12+0], v[vgprValuB_X0_I0+0+12+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+12+1], v[vgprValuB_X0_I0+0+12+1], 0, s74 // shift if in this 64b group
v_cmp_eq_i32 s74, s73, 7                           // handle this 64bit group: part 1
v_lshlrev_b64 v[50:51], s72, v[vgprValuA_X0_I0+0+14:vgprValuA_X0_I0+0+14+1] // shfit for ValuA[14:15]
v_cndmask_b32 v[vgprValuA_X0_I0+0+14+0], v[vgprValuA_X0_I0+0+14+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+14+1], v[vgprValuA_X0_I0+0+14+1], v51, s74 // shift if in this 64b group
v_lshlrev_b64 v[50:51], s72, v[vgprValuB_X0_I0+0+14:vgprValuB_X0_I0+0+14+1] // shfit for ValuB[14:15]
v_cndmask_b32 v[vgprValuB_X0_I0+0+14+0], v[vgprValuB_X0_I0+0+14+0], v50, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+14+1], v[vgprValuB_X0_I0+0+14+1], v51, s74 // shift if in this 64b group
v_cmp_lt_i32 s74, s73, 7                           // handle this 64bit group: part 2
v_cndmask_b32 v[vgprValuA_X0_I0+0+14+0], v[vgprValuA_X0_I0+0+14+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuA_X0_I0+0+14+1], v[vgprValuA_X0_I0+0+14+1], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+14+0], v[vgprValuB_X0_I0+0+14+0], 0, s74 // shift if in this 64b group
v_cndmask_b32 v[vgprValuB_X0_I0+0+14+1], v[vgprValuB_X0_I0+0+14+1], 0, s74 // shift if in this 64b group
s_nop 1
v_swmmac_f32_16x16x32_f16 v[0:7], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+7], v[vgprValuMetadata+1] // left value = v[0+0:7+0]

/* closeLoop loopL finalLoop=1 tailLoop=1 */
s_sub_i32 s[sgprLoopCounterL], s[sgprLoopCounterL], 0x20 // dec counterL (tailLoop)
s_add_u32 s[sgprOrigLoopCounter], s[sgprOrigLoopCounter], 0x20 // inc counterL
s_cmp_le_i32 s[sgprLoopCounterL], 0x0              // counterL<=0
s_cbranch_scc0 label_TailLoopBeginL                // restart LoopL
label_TailLoopEndL:
label_SkipTailLoopL:

/* Tail: remove address/G2L [49...118) from pool */
label_Summation_End_7KS5S3PQZDKGF5XZ_0:
/* endSummation: add vgpr [10...118) to pool */
.set sgprGlobalReadIncsA, UNDEF
.set sgprSrdA, UNDEF
.set sgprSrdB, UNDEF
.set sgprSrdMetadata, UNDEF
.set sgprShadowLimitB, UNDEF
.set sgprShadowLimitMetadata, UNDEF
.set sgprWrapUA, UNDEF
.set sgprWrapUB, UNDEF
.set sgprWrapUMetadata, UNDEF
.set sgprGlobalReadIncsB, UNDEF
/* load store sgprs */

/* Mapping of Acc register -> C Vgpr register */

/* Multiply MI out register with Alpha -> C Vgpr register */

/* shift vector components d0 */
v_mov_b32 v13, s[sgprWorkGroup0]
v_mul_i32_i24 v13, -0x10, v13                      // wg*MT
v_add_co_u32 v13, vcc_lo, s[sgprSizesFree+0], v13  // wgMT = Size - wg*MT
v_mov_b32 v14, 0x10                                // MT
v_cmp_lt_u32 s47, v13, v14                         // wgMT < MT
v_cndmask_b32 v13, v14, v13, s47                   // wgMT = (wgMT < MT) ? wgMT : MT
v_lshrrev_b32 v15, 5, v[vgprSerial]                // v15 = v[vgprSerial] / 32
v_and_b32 v15, 0, v15                              // v15 = v15 % 1
v_lshrrev_b32 v16, 4, v13                          // v16 = v13 / 16
v_and_b32 v16, 0, v16                              // v16 = v16 % 1
v_cmp_eq_u32 s47, v16, v15                         // wave_id == block_belong_to_wave?
v_cndmask_b32 v13, v14, v13, s47                   // wgMT = (wgMT < MT) ? wgMT : MT

/* mbReg: which mb block need to shift, mb(matrixInstCoal(16) * VectorWidth(1)) */
v_lshrrev_b32 v14, 1, v13                          // v14 = v13 / 2
v_lshlrev_b32 v16, 0x3, v15                        // v16 = v15 * 8
v_sub_nc_u32 v14, v14, v16

/* gbReg: glvw block id */
v_lshrrev_b32 v16, 1, v13                          // v16 = v13 / 2

/* tgbReg: glvw block id */
v_lshrrev_b32 v17, 4, v[vgprSerial]                // v17 = v[vgprSerial] / 16
v_and_b32 v17, 1, v17                              // v17 = v17 % 2
                                                   // v17 = v17 * 1 (multiplier is 1, do nothing)
v_lshrrev_b32 v17, 1, v17                          // v17 = v17 / 2
v_lshlrev_b32 v15, 0x3, v15                        // v15 = v15 * 8
v_add_co_u32 v17, vcc_lo, v15, v17                 // tgbReg = (tid_coal * continOut) / GLVW
v_sub_nc_u32 v16, v16, v17

/* vwReg: glvw in which vw block? */
v_and_b32 v15, 0, v13                              // permute register between threads
v_lshrrev_b32 v15, 1, v15                          // permute register between threads

/* rReg : reminder of M_size % GlobalReadVectorWidth */
v_and_b32 v17, 1, v13                              // v17 = v13 % 2
v_cmp_eq_u32 vcc_lo, v17, 0x1                      // wgMT%VW == 1
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_0 // branch to shift d0 r=1
s_branch label_ShiftVectorComponents0_GLVW0_0      // no shifting

/******************************************/
/* shift d0 r=1                           */
/******************************************/
label_ShiftVectorComponents0_GLVW1_0:
v_cmp_eq_u32 vcc_lo, v14, 0x0
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_BM0_0 // branch to shift d0 r1 mb0
v_cmp_eq_u32 vcc_lo, v14, 0x1
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_BM1_0 // branch to shift d0 r1 mb1
v_cmp_eq_u32 vcc_lo, v14, 0x2
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_BM2_0 // branch to shift d0 r1 mb2
v_cmp_eq_u32 vcc_lo, v14, 0x3
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_BM3_0 // branch to shift d0 r1 mb3
v_cmp_eq_u32 vcc_lo, v14, 0x4
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_BM4_0 // branch to shift d0 r1 mb4
v_cmp_eq_u32 vcc_lo, v14, 0x5
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_BM5_0 // branch to shift d0 r1 mb5
v_cmp_eq_u32 vcc_lo, v14, 0x6
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_BM6_0 // branch to shift d0 r1 mb6
v_cmp_eq_u32 vcc_lo, v14, 0x7
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_BM7_0 // branch to shift d0 r1 mb7

/******************************************/
/* shift d0 r=1 mb=0                      */
/******************************************/
label_ShiftVectorComponents0_GLVW1_BM0_0:  /// r1 mb0
v_cmp_eq_u32 vcc_lo, v15, 0x0
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_BM0_VW0_0 // branch to shift d0 r1 mb0 vw0

/******************************************/
/* shift d0 r=1 mb=1                      */
/******************************************/
label_ShiftVectorComponents0_GLVW1_BM1_0:  /// r1 mb1
v_cmp_eq_u32 vcc_lo, v15, 0x0
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_BM1_VW0_0 // branch to shift d0 r1 mb1 vw0

/******************************************/
/* shift d0 r=1 mb=2                      */
/******************************************/
label_ShiftVectorComponents0_GLVW1_BM2_0:  /// r1 mb2
v_cmp_eq_u32 vcc_lo, v15, 0x0
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_BM2_VW0_0 // branch to shift d0 r1 mb2 vw0

/******************************************/
/* shift d0 r=1 mb=3                      */
/******************************************/
label_ShiftVectorComponents0_GLVW1_BM3_0:  /// r1 mb3
v_cmp_eq_u32 vcc_lo, v15, 0x0
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_BM3_VW0_0 // branch to shift d0 r1 mb3 vw0

/******************************************/
/* shift d0 r=1 mb=4                      */
/******************************************/
label_ShiftVectorComponents0_GLVW1_BM4_0:  /// r1 mb4
v_cmp_eq_u32 vcc_lo, v15, 0x0
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_BM4_VW0_0 // branch to shift d0 r1 mb4 vw0

/******************************************/
/* shift d0 r=1 mb=5                      */
/******************************************/
label_ShiftVectorComponents0_GLVW1_BM5_0:  /// r1 mb5
v_cmp_eq_u32 vcc_lo, v15, 0x0
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_BM5_VW0_0 // branch to shift d0 r1 mb5 vw0

/******************************************/
/* shift d0 r=1 mb=6                      */
/******************************************/
label_ShiftVectorComponents0_GLVW1_BM6_0:  /// r1 mb6
v_cmp_eq_u32 vcc_lo, v15, 0x0
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_BM6_VW0_0 // branch to shift d0 r1 mb6 vw0

/******************************************/
/* shift d0 r=1 mb=7                      */
/******************************************/
label_ShiftVectorComponents0_GLVW1_BM7_0:  /// r1 mb7
v_cmp_eq_u32 vcc_lo, v15, 0x0
s_cbranch_vccnz label_ShiftVectorComponents0_GLVW1_BM7_VW0_0 // branch to shift d0 r1 mb7 vw0

/******************************************/
/* shift d0 r=1 mb=0 vw0                  */
/******************************************/
label_ShiftVectorComponents0_GLVW1_BM0_VW0_0:  /// r1 mb0 vw0
s_mov_b32 s47, 0
v_cmp_eq_u32 s47, v16, s47                         // is thread in edge glvw region
s_mov_b32 exec_lo s47                              // is thread in edge glvw region
v_and_b32 v10, 31, v[vgprSerial]                   // permute register between threads
v_lshlrev_b32 v10, 2, v10                          // permute register between threads
v_mov_b32 v17, v0                                  // glvw 1 mb 0 tt1 0 r 0
ds_bpermute_b32 v17, v10, v17 offset:64            // permute edge values
s_waitcnt 0                                        // (Wait all)
v_mov_b32 v0, v17
s_mov_b32 s47, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s47                      // all threads active
s_branch label_ShiftVectorComponents0_GLVW0_0      // done shifting


/******************************************/
/* shift d0 r=1 mb=1 vw0                  */
/******************************************/
label_ShiftVectorComponents0_GLVW1_BM1_VW0_0:  /// r1 mb1 vw0
s_mov_b32 s47, 1
v_cmp_eq_u32 s47, v16, s47                         // is thread in edge glvw region
s_mov_b32 exec_lo s47                              // is thread in edge glvw region
v_and_b32 v10, 31, v[vgprSerial]                   // permute register between threads
v_lshlrev_b32 v10, 2, v10                          // permute register between threads
v_mov_b32 v17, v1                                  // glvw 1 mb 1 tt1 0 r 0
ds_bpermute_b32 v17, v10, v17 offset:64            // permute edge values
s_waitcnt 0                                        // (Wait all)
v_mov_b32 v1, v17
s_mov_b32 s47, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s47                      // all threads active
s_branch label_ShiftVectorComponents0_GLVW0_0      // done shifting


/******************************************/
/* shift d0 r=1 mb=2 vw0                  */
/******************************************/
label_ShiftVectorComponents0_GLVW1_BM2_VW0_0:  /// r1 mb2 vw0
s_mov_b32 s47, 2
v_cmp_eq_u32 s47, v16, s47                         // is thread in edge glvw region
s_mov_b32 exec_lo s47                              // is thread in edge glvw region
v_and_b32 v10, 31, v[vgprSerial]                   // permute register between threads
v_lshlrev_b32 v10, 2, v10                          // permute register between threads
v_mov_b32 v17, v2                                  // glvw 1 mb 2 tt1 0 r 0
ds_bpermute_b32 v17, v10, v17 offset:64            // permute edge values
s_waitcnt 0                                        // (Wait all)
v_mov_b32 v2, v17
s_mov_b32 s47, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s47                      // all threads active
s_branch label_ShiftVectorComponents0_GLVW0_0      // done shifting


/******************************************/
/* shift d0 r=1 mb=3 vw0                  */
/******************************************/
label_ShiftVectorComponents0_GLVW1_BM3_VW0_0:  /// r1 mb3 vw0
s_mov_b32 s47, 3
v_cmp_eq_u32 s47, v16, s47                         // is thread in edge glvw region
s_mov_b32 exec_lo s47                              // is thread in edge glvw region
v_and_b32 v10, 31, v[vgprSerial]                   // permute register between threads
v_lshlrev_b32 v10, 2, v10                          // permute register between threads
v_mov_b32 v17, v3                                  // glvw 1 mb 3 tt1 0 r 0
ds_bpermute_b32 v17, v10, v17 offset:64            // permute edge values
s_waitcnt 0                                        // (Wait all)
v_mov_b32 v3, v17
s_mov_b32 s47, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s47                      // all threads active
s_branch label_ShiftVectorComponents0_GLVW0_0      // done shifting


/******************************************/
/* shift d0 r=1 mb=4 vw0                  */
/******************************************/
label_ShiftVectorComponents0_GLVW1_BM4_VW0_0:  /// r1 mb4 vw0
s_mov_b32 s47, 4
v_cmp_eq_u32 s47, v16, s47                         // is thread in edge glvw region
s_mov_b32 exec_lo s47                              // is thread in edge glvw region
v_and_b32 v10, 31, v[vgprSerial]                   // permute register between threads
v_lshlrev_b32 v10, 2, v10                          // permute register between threads
v_mov_b32 v17, v4                                  // glvw 1 mb 4 tt1 0 r 0
ds_bpermute_b32 v17, v10, v17 offset:64            // permute edge values
s_waitcnt 0                                        // (Wait all)
v_mov_b32 v4, v17
s_mov_b32 s47, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s47                      // all threads active
s_branch label_ShiftVectorComponents0_GLVW0_0      // done shifting


/******************************************/
/* shift d0 r=1 mb=5 vw0                  */
/******************************************/
label_ShiftVectorComponents0_GLVW1_BM5_VW0_0:  /// r1 mb5 vw0
s_mov_b32 s47, 5
v_cmp_eq_u32 s47, v16, s47                         // is thread in edge glvw region
s_mov_b32 exec_lo s47                              // is thread in edge glvw region
v_and_b32 v10, 31, v[vgprSerial]                   // permute register between threads
v_lshlrev_b32 v10, 2, v10                          // permute register between threads
v_mov_b32 v17, v5                                  // glvw 1 mb 5 tt1 0 r 0
ds_bpermute_b32 v17, v10, v17 offset:64            // permute edge values
s_waitcnt 0                                        // (Wait all)
v_mov_b32 v5, v17
s_mov_b32 s47, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s47                      // all threads active
s_branch label_ShiftVectorComponents0_GLVW0_0      // done shifting


/******************************************/
/* shift d0 r=1 mb=6 vw0                  */
/******************************************/
label_ShiftVectorComponents0_GLVW1_BM6_VW0_0:  /// r1 mb6 vw0
s_mov_b32 s47, 6
v_cmp_eq_u32 s47, v16, s47                         // is thread in edge glvw region
s_mov_b32 exec_lo s47                              // is thread in edge glvw region
v_and_b32 v10, 31, v[vgprSerial]                   // permute register between threads
v_lshlrev_b32 v10, 2, v10                          // permute register between threads
v_mov_b32 v17, v6                                  // glvw 1 mb 6 tt1 0 r 0
ds_bpermute_b32 v17, v10, v17 offset:64            // permute edge values
s_waitcnt 0                                        // (Wait all)
v_mov_b32 v6, v17
s_mov_b32 s47, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s47                      // all threads active
s_branch label_ShiftVectorComponents0_GLVW0_0      // done shifting


/******************************************/
/* shift d0 r=1 mb=7 vw0                  */
/******************************************/
label_ShiftVectorComponents0_GLVW1_BM7_VW0_0:  /// r1 mb7 vw0
s_mov_b32 s47, 7
v_cmp_eq_u32 s47, v16, s47                         // is thread in edge glvw region
s_mov_b32 exec_lo s47                              // is thread in edge glvw region
v_and_b32 v10, 31, v[vgprSerial]                   // permute register between threads
v_lshlrev_b32 v10, 2, v10                          // permute register between threads
v_mov_b32 v17, v7                                  // glvw 1 mb 7 tt1 0 r 0
ds_bpermute_b32 v17, v10, v17 offset:64            // permute edge values
s_waitcnt 0                                        // (Wait all)
v_mov_b32 v7, v17
s_mov_b32 s47, 0xFFFFFFFF                          // to restore all threads active
s_or_saveexec_b32 vcc_lo, s47                      // all threads active
s_branch label_ShiftVectorComponents0_GLVW0_0      // done shifting

label_ShiftVectorComponents0_GLVW0_0:  /// end shift0

/* not-LocalSplitU: global write indices */
/* computeStoreVgprs */
v_lshrrev_b32 v14, 5, v[vgprSerial]                // v14 = v[vgprSerial] / 32
v_lshrrev_b32 v11, 0, v14                          // v11 = v14 / 1
v_mul_lo_u32 v11, 0x10, v11                        // wave coordination offset 1
v_and_b32 v15, 15, v[vgprSerial]                   // v15 = v[vgprSerial] % 16
v_add_lshl_u32 v11, v15, v11, 0                    // coordination 1 = vwB *(wave_id1 + tid1)
v_mul_lo_u32 v12, v11, s[sgprStrideC1J]            //  offset 1
v_mul_lo_u32 v13, v11, s[sgprStrideD1J]            //  offset 1
v_and_b32 v15, 0, v14                              // v15 = v14 % 1
v_mul_lo_u32 v15, 0x10, v15                        // wave coordination offset 0
v_and_b32 v10, 31, v[vgprSerial]                   // v10 = v[vgprSerial] % 32
v_lshrrev_b32 v10, 4, v10                          // v10 = v10 / 16
                                                   // thread0 * continuous_output (multiplier is 1, do nothing)
v_add_lshl_u32 v10, v15, v10, 0                    // coordination 0 = vwA *(wave_id0 + tid0)
s_mul_i32 s47, 16, s[sgprWorkGroup0]               // wgp0 * MT0
v_add_nc_u32 v10, s47, v10                         // coord 0 = (tid0/MI_m)*4 + waveG0*MIB_m + MT0*SG0
s_mul_i32 s47, 16, s[sgprWorkGroup1]               // wgp1 * MT1
v_add_nc_u32 v11, s47, v11                         // coord 1 = (tid0%MI_m) + waveG1*MIB_n + MT1*SG1

/* not-LocalSplitU: global write */

/******************************************/
/* Global Write Elements                  */
/******************************************/
s_mov_b32 s48, 0x0
s_cmp_eq_u32 s[sgprBeta], s48                      // Beta == 0
s_cbranch_scc0 label_GW_Beta_3                     // Branch if Beta is not zero

s_and_b32 s48, 15, s[sgprSizeI]                    // s48 = s[sgprSizeI] % 16
s_add_u32 s49, -0x1, s[sgprNumWorkGroups0]
s_cmp_ge_u32 s[sgprWorkGroup0], s49                // wg0 >= nwg0-1 ?
s_cselect_b32 s48, s48, 0                          // set rMT0
s_mov_b32 s47, 0x0
s_cmp_gt_u32 s48, s47                              // rMT0 > 0
s_cbranch_scc1 label_GW_B0_E1                      // jump if edges required
s_and_b32 s48, 15, s[sgprSizeJ]                    // s48 = s[sgprSizeJ] % 16
s_add_u32 s49, -0x1, s[sgprNumWorkGroups1]
s_cmp_ge_u32 s[sgprWorkGroup1], s49                // wg1 >= nwg1-1
s_cselect_b32 s48, s48, 0                          // set rMT1
s_mov_b32 s47, 0x0
s_cmp_gt_u32 s48, s47                              // rMT1 > 0
s_cbranch_scc1 label_GW_B0_E1                      // jump if edges required
label_GW_B0_E0_1:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=108 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,1,0,0:vw1); (0,2,0,0:vw1); (0,3,0,0:vw1); (0,4,0,0:vw1); (0,5,0,0:vw1); (0,6,0,0:vw1); (0,7,0,0:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
/* (d1,vc1,d0,vc0)=(0,0,4,0) */
/* (d1,vc1,d0,vc0)=(0,0,5,0) */
/* (d1,vc1,d0,vc0)=(0,0,6,0) */
/* (d1,vc1,d0,vc0)=(0,0,7,0) */
v_add_lshl_u32 v16, v13, v10, 0x2                  // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=10, coord0Vgpr=10

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 2, 0, 0), (0, 3, 0, 0), (0, 4, 0, 0), (0, 5, 0, 0), (0, 6, 0, 0), (0, 7, 0, 0)] */
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+0] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+1] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+2] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+3] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+4] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+5] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+6] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+7] // Multiply MI out reg with alpha

/* apply mask, calc new C and issue writes */
buffer_store_b32 v18, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
buffer_store_b32 v19, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:8 // store D
buffer_store_b32 v20, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:16 // store D
buffer_store_b32 v21, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:24 // store D
buffer_store_b32 v22, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:32 // store D
buffer_store_b32 v23, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:40 // store D
buffer_store_b32 v24, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:48 // store D
buffer_store_b32 v25, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:56 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_B0_E1:

/* edge=1, allocate 3 sgpr. perBatchTmpS=2 perBatchMaskS=1 perElementMaskS=0 elementsPerBatch=54 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,1,0,0:vw1); (0,2,0,0:vw1); (0,3,0,0:vw1); (0,4,0,0:vw1); (0,5,0,0:vw1); (0,6,0,0:vw1); (0,7,0,0:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v32, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s48, v10, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
v_add_lshl_u32 v16, v13, v10, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v16, v32, v16, s50                   // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
v_add_co_u32 v14, vcc_lo, v10, 2                   // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v14, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
v_add_lshl_u32 v18, v13, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v18, v32, v18, s50                   // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
v_add_co_u32 v14, vcc_lo, v10, 4                   // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v14, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
v_add_lshl_u32 v20, v13, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v20, v32, v20, s50                   // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
v_add_co_u32 v14, vcc_lo, v10, 6                   // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v14, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
v_add_lshl_u32 v22, v13, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v22, v32, v22, s50                   // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,4,0) */
v_add_co_u32 v14, vcc_lo, v10, 8                   // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v14, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
v_add_lshl_u32 v24, v13, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v24, v32, v24, s50                   // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,5,0) */
v_add_co_u32 v14, vcc_lo, v10, 10                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v14, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
v_add_lshl_u32 v26, v13, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v26, v32, v26, s50                   // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,6,0) */
v_add_co_u32 v14, vcc_lo, v10, 12                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v14, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
v_add_lshl_u32 v28, v13, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v32, v28, s50                   // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,7,0) */
v_add_co_u32 v14, vcc_lo, v10, 14                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v14, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
v_add_lshl_u32 v30, v13, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v30, v32, v30, s50                   // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 2, 0, 0), (0, 3, 0, 0), (0, 4, 0, 0), (0, 5, 0, 0), (0, 6, 0, 0), (0, 7, 0, 0)] */
v_mul_f32 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+0] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+1] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+2] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+3] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+4] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+5] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+6] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+7] // Multiply MI out reg with alpha

/* apply mask, calc new C and issue writes */
buffer_store_b32 v17, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
buffer_store_b32 v19, v18, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
buffer_store_b32 v21, v20, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
buffer_store_b32 v23, v22, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
buffer_store_b32 v25, v24, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
buffer_store_b32 v27, v26, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
buffer_store_b32 v29, v28, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
buffer_store_b32 v31, v30, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_Beta_3:
s_and_b32 s48, 15, s[sgprSizeI]                    // s48 = s[sgprSizeI] % 16
s_add_u32 s49, -0x1, s[sgprNumWorkGroups0]
s_cmp_ge_u32 s[sgprWorkGroup0], s49                // wg0 >= nwg0-1 ?
s_cselect_b32 s48, s48, 0                          // set rMT0
s_mov_b32 s47, 0x0
s_cmp_gt_u32 s48, s47                              // rMT0 > 0
s_cbranch_scc1 label_GW_B1_E1                      // jump if edges required
s_and_b32 s48, 15, s[sgprSizeJ]                    // s48 = s[sgprSizeJ] % 16
s_add_u32 s49, -0x1, s[sgprNumWorkGroups1]
s_cmp_ge_u32 s[sgprWorkGroup1], s49                // wg1 >= nwg1-1
s_cselect_b32 s48, s48, 0                          // set rMT1
s_mov_b32 s47, 0x0
s_cmp_gt_u32 s48, s47                              // rMT1 > 0
s_cbranch_scc1 label_GW_B1_E1                      // jump if edges required
label_GW_B1_E0:

/* edge=0, allocate 1 sgpr. perBatchTmpS=1 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=54 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,1,0,0:vw1); (0,2,0,0:vw1); (0,3,0,0:vw1); (0,4,0,0:vw1); (0,5,0,0:vw1); (0,6,0,0:vw1); (0,7,0,0:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_add_lshl_u32 v17, v12, v10, 0x2                  // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=10, coord0Vgpr=10
buffer_load_b32 v18, v17, s[sgprSrdC:sgprSrdC+3], null offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
buffer_load_b32 v20, v17, s[sgprSrdC:sgprSrdC+3], null offen offset:8 // load C
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
buffer_load_b32 v22, v17, s[sgprSrdC:sgprSrdC+3], null offen offset:16 // load C
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
buffer_load_b32 v24, v17, s[sgprSrdC:sgprSrdC+3], null offen offset:24 // load C
/* (d1,vc1,d0,vc0)=(0,0,4,0) */
buffer_load_b32 v26, v17, s[sgprSrdC:sgprSrdC+3], null offen offset:32 // load C
/* (d1,vc1,d0,vc0)=(0,0,5,0) */
buffer_load_b32 v28, v17, s[sgprSrdC:sgprSrdC+3], null offen offset:40 // load C
/* (d1,vc1,d0,vc0)=(0,0,6,0) */
buffer_load_b32 v30, v17, s[sgprSrdC:sgprSrdC+3], null offen offset:48 // load C
/* (d1,vc1,d0,vc0)=(0,0,7,0) */
buffer_load_b32 v32, v17, s[sgprSrdC:sgprSrdC+3], null offen offset:56 // load C
v_add_lshl_u32 v16, v13, v10, 0x2                  // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=10, coord0Vgpr=10

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 2, 0, 0), (0, 3, 0, 0), (0, 4, 0, 0), (0, 5, 0, 0), (0, 6, 0, 0), (0, 7, 0, 0)] */
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+0] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+1] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+2] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+3] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+4] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+5] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+6] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+7] // Multiply MI out reg with alpha

/* apply mask, calc new C and issue writes */

s_waitcnt vmcnt(7)                                 // vmcnt(7) = 8 - 1 (beta) (interleaved)
v_fmac_f32 v[vgprValuC+19], v18, s[sgprBeta]       // finalSum = sum*alpha + C*beta
buffer_store_b32 v19, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D

s_waitcnt vmcnt(7)                                 // vmcnt(6) = 8 - 2 (beta) (interleaved)
v_fmac_f32 v[vgprValuC+21], v20, s[sgprBeta]       // finalSum = sum*alpha + C*beta
buffer_store_b32 v21, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:8 // store D

s_waitcnt vmcnt(7)                                 // vmcnt(5) = 8 - 3 (beta) (interleaved)
v_fmac_f32 v[vgprValuC+23], v22, s[sgprBeta]       // finalSum = sum*alpha + C*beta
buffer_store_b32 v23, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:16 // store D

s_waitcnt vmcnt(7)                                 // vmcnt(4) = 8 - 4 (beta) (interleaved)
v_fmac_f32 v[vgprValuC+25], v24, s[sgprBeta]       // finalSum = sum*alpha + C*beta
buffer_store_b32 v25, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:24 // store D

s_waitcnt vmcnt(7)                                 // vmcnt(3) = 8 - 5 (beta) (interleaved)
v_fmac_f32 v[vgprValuC+27], v26, s[sgprBeta]       // finalSum = sum*alpha + C*beta
buffer_store_b32 v27, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:32 // store D

s_waitcnt vmcnt(7)                                 // vmcnt(2) = 8 - 6 (beta) (interleaved)
v_fmac_f32 v[vgprValuC+29], v28, s[sgprBeta]       // finalSum = sum*alpha + C*beta
buffer_store_b32 v29, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:40 // store D

s_waitcnt vmcnt(7)                                 // vmcnt(1) = 8 - 7 (beta) (interleaved)
v_fmac_f32 v[vgprValuC+31], v30, s[sgprBeta]       // finalSum = sum*alpha + C*beta
buffer_store_b32 v31, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:48 // store D

s_waitcnt vmcnt(7)                                 // vmcnt(0) = 8 - 8 (beta) (interleaved)
v_fmac_f32 v[vgprValuC+33], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
buffer_store_b32 v33, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:56 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_B1_E1:

/* edge=1, allocate 3 sgpr. perBatchTmpS=2 perBatchMaskS=1 perElementMaskS=0 elementsPerBatch=36 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Beta Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,1,0,0:vw1); (0,2,0,0:vw1); (0,3,0,0:vw1); (0,4,0,0:vw1); (0,5,0,0:vw1); (0,6,0,0:vw1); (0,7,0,0:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v40, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s48, v10, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
v_add_lshl_u32 v16, v12, v10, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v16, v40, v16, s50                   // LDC clip if OOB. offset
buffer_load_b32 v17, v16, s[sgprSrdC:sgprSrdC+3], null offen offset:0 // load C
v_add_lshl_u32 v16, v13, v10, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v16, v40, v16, s50                   // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,1,0) */
v_add_co_u32 v14, vcc_lo, v10, 2                   // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v14, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
v_add_lshl_u32 v19, v12, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v19, v40, v19, s50                   // LDC clip if OOB. offset
buffer_load_b32 v20, v19, s[sgprSrdC:sgprSrdC+3], null offen offset:0 // load C
v_add_lshl_u32 v19, v13, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v19, v40, v19, s50                   // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,2,0) */
v_add_co_u32 v14, vcc_lo, v10, 4                   // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v14, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
v_add_lshl_u32 v22, v12, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v22, v40, v22, s50                   // LDC clip if OOB. offset
buffer_load_b32 v23, v22, s[sgprSrdC:sgprSrdC+3], null offen offset:0 // load C
v_add_lshl_u32 v22, v13, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v22, v40, v22, s50                   // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,3,0) */
v_add_co_u32 v14, vcc_lo, v10, 6                   // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v14, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
v_add_lshl_u32 v25, v12, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v25, v40, v25, s50                   // LDC clip if OOB. offset
buffer_load_b32 v26, v25, s[sgprSrdC:sgprSrdC+3], null offen offset:0 // load C
v_add_lshl_u32 v25, v13, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v25, v40, v25, s50                   // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,4,0) */
v_add_co_u32 v14, vcc_lo, v10, 8                   // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v14, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
v_add_lshl_u32 v28, v12, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v40, v28, s50                   // LDC clip if OOB. offset
buffer_load_b32 v29, v28, s[sgprSrdC:sgprSrdC+3], null offen offset:0 // load C
v_add_lshl_u32 v28, v13, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v40, v28, s50                   // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,5,0) */
v_add_co_u32 v14, vcc_lo, v10, 10                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v14, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
v_add_lshl_u32 v31, v12, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v40, v31, s50                   // LDC clip if OOB. offset
buffer_load_b32 v32, v31, s[sgprSrdC:sgprSrdC+3], null offen offset:0 // load C
v_add_lshl_u32 v31, v13, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v40, v31, s50                   // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,6,0) */
v_add_co_u32 v14, vcc_lo, v10, 12                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v14, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
v_add_lshl_u32 v34, v12, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v34, v40, v34, s50                   // LDC clip if OOB. offset
buffer_load_b32 v35, v34, s[sgprSrdC:sgprSrdC+3], null offen offset:0 // load C
v_add_lshl_u32 v34, v13, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v34, v40, v34, s50                   // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,7,0) */
v_add_co_u32 v14, vcc_lo, v10, 14                  // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s48, v14, s[sgprSizeI]                // coord0 < size0
v_cmp_lt_u32 s50, v11, s[sgprSizeJ]                // coord1 < size1
s_and_b32 s50, s48, s50                            // in0 && in1
v_add_lshl_u32 v37, v12, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v37, v40, v37, s50                   // LDC clip if OOB. offset
buffer_load_b32 v38, v37, s[sgprSrdC:sgprSrdC+3], null offen offset:0 // load C
v_add_lshl_u32 v37, v13, v14, 0x2                  // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v37, v40, v37, s50                   // LDD clip if OOB. offset

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 1, 0, 0), (0, 2, 0, 0), (0, 3, 0, 0), (0, 4, 0, 0), (0, 5, 0, 0), (0, 6, 0, 0), (0, 7, 0, 0)] */
v_mul_f32 v[vgprValuC+18], s[sgprAlpha], v[vgprValuC+0] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+1] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+2] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+3] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+4] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+5] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+6] // Multiply MI out reg with alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+7] // Multiply MI out reg with alpha
s_waitcnt vmcnt(0)                                 // wait for Beta

/* apply mask, calc new C and issue writes */
v_fmac_f32 v[vgprValuC+18], v17, s[sgprBeta]       // finalSum = sum*alpha + C*beta
buffer_store_b32 v18, v16, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
v_fmac_f32 v[vgprValuC+21], v20, s[sgprBeta]       // finalSum = sum*alpha + C*beta
buffer_store_b32 v21, v19, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
v_fmac_f32 v[vgprValuC+24], v23, s[sgprBeta]       // finalSum = sum*alpha + C*beta
buffer_store_b32 v24, v22, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
v_fmac_f32 v[vgprValuC+27], v26, s[sgprBeta]       // finalSum = sum*alpha + C*beta
buffer_store_b32 v27, v25, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
v_fmac_f32 v[vgprValuC+30], v29, s[sgprBeta]       // finalSum = sum*alpha + C*beta
buffer_store_b32 v30, v28, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
v_fmac_f32 v[vgprValuC+33], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
buffer_store_b32 v33, v31, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
v_fmac_f32 v[vgprValuC+36], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
buffer_store_b32 v36, v34, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
v_fmac_f32 v[vgprValuC+39], v38, s[sgprBeta]       // finalSum = sum*alpha + C*beta
buffer_store_b32 v39, v37, s[sgprSrdD:sgprSrdD+3], null offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_End_1:
label_KernelEnd:
s_endpgm                                           // Kernel End
