	.file	"matmul.c"
	.intel_syntax noprefix
# GNU C11 (GCC) version 16.2.1 20260819 (Red Hat 16.2.1-2) (x86_64-redhat-linux)
#	compiled by GNU C version 16.2.1 20260819 (Red Hat 16.2.1-2), GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.4.1, isl version none
# warning: MPC header version 1.4.1 differs from library version 1.4.0.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -march=skylake -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -mno-sse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mno-vpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mno-clwb -mno-clzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mprfchw -mno-ptwrite -mno-rdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -msgx -mno-sha -mno-shstk -mno-tbm -mno-tsxldtrk -mno-vaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr -mno-avx10.1 -mno-avx10.2 -mno-amx-avx512 -mno-amx-tf32 -mno-amx-fp8 -mno-movrs -mno-amx-movrs -mno-avx512bmm --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=6144 -mtune=skylake -masm=intel -mtls-dialect=gnu2 -O3 -std=c11 -ffp-contract=fast -ffast-math -funroll-loops
	.text
	.p2align 4
	.globl	"matmul_kernel"
	.type	"matmul_kernel", @function
"matmul_kernel":
.LFB13:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	r15	#
	push	r14	#
	push	r13	#
	push	r12	#
	push	rbx	#
	and	rsp, -32	#,
	sub	rsp, 160	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
# src/matmul.c:26:     const uint64_t M = A->m;
	mov	r8, QWORD PTR [rdi+8]	# M, A_40(D)->m
# src/matmul.c:28:     const uint64_t N = B->n;
	mov	r13, QWORD PTR [rsi+16]	# N, B_43(D)->n
# src/matmul.c:32:     float       *restrict c = __builtin_assume_aligned(C->dados, MATRIZ_ALINHAMENTO);
	mov	rbx, QWORD PTR [rdx]	# c, C_47(D)->dados
# src/matmul.c:27:     const uint64_t K = A->n;
	mov	r14, QWORD PTR [rdi+16]	# K, A_40(D)->n
# src/matmul.c:36:     memset(c, 0, (size_t)(M * N) * sizeof(float));
	mov	rdx, r8	# _5, M
	lea	r12, [0+r13*4]	# _87,
# src/matmul.c:30:     const float *restrict a = __builtin_assume_aligned(A->dados, MATRIZ_ALINHAMENTO);
	mov	r10, QWORD PTR [rdi]	# _1, A_40(D)->dados
# src/matmul.c:31:     const float *restrict b = __builtin_assume_aligned(B->dados, MATRIZ_ALINHAMENTO);
	mov	r15, QWORD PTR [rsi]	# _2, B_43(D)->dados
# src/matmul.c:36:     memset(c, 0, (size_t)(M * N) * sizeof(float));
	imul	rdx, r12	# _5, _87
# src/matmul.c:36:     memset(c, 0, (size_t)(M * N) * sizeof(float));
	xor	esi, esi	#
	mov	rdi, rbx	#, c
# src/matmul.c:27:     const uint64_t K = A->n;
	mov	QWORD PTR [rsp+56], r14	# %sfp, K
# src/matmul.c:30:     const float *restrict a = __builtin_assume_aligned(A->dados, MATRIZ_ALINHAMENTO);
	mov	QWORD PTR [rsp+144], r10	# %sfp, _1
# src/matmul.c:32:     float       *restrict c = __builtin_assume_aligned(C->dados, MATRIZ_ALINHAMENTO);
	mov	QWORD PTR [rsp+88], rbx	# %sfp, c
# src/matmul.c:36:     memset(c, 0, (size_t)(M * N) * sizeof(float));
	mov	QWORD PTR [rsp+152], r8	# %sfp, M
# src/matmul.c:36:     memset(c, 0, (size_t)(M * N) * sizeof(float));
	call	"memset"	#
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	mov	rsi, QWORD PTR [rsp+152]	# M, %sfp
	test	rsi, rsi	# M
	je	.L123	#,
	test	r14, r14	# K
	je	.L123	#,
	mov	r9, QWORD PTR [rsp+144]	# _1, %sfp
	lea	rdi, [0+r14*4]	# _316,
# src/matmul.c:31:     const float *restrict b = __builtin_assume_aligned(B->dados, MATRIZ_ALINHAMENTO);
	mov	QWORD PTR [rsp+104], 0	# %sfp,
	mov	r14, rbx	# ivtmp.107, c
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	mov	QWORD PTR [rsp+40], rsi	# %sfp, M
	sub	rbx, r15	# ivtmp.111, _2
# src/matmul.c:31:     const float *restrict b = __builtin_assume_aligned(B->dados, MATRIZ_ALINHAMENTO);
	xor	ecx, ecx	# ivtmp.109
	lea	rax, [r9+rdi]	# ivtmp.106,
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	mov	QWORD PTR [rsp+48], r9	# %sfp, _1
	mov	rdx, rbx	# ivtmp.111, ivtmp.111
	mov	QWORD PTR [rsp+136], rax	# %sfp, ivtmp.106
	mov	QWORD PTR [rsp+80], 0	# %sfp,
	mov	QWORD PTR [rsp+32], r12	# %sfp, _87
	mov	QWORD PTR [rsp+24], rdi	# %sfp, _316
	.p2align 4,,10
	.p2align 3
.L17:
# src/matmul.c:51:             const size_t prologo =
	mov	r12, r14	# _184, ivtmp.107
	lea	rbx, [rdx-4]	# _35,
	mov	r11, QWORD PTR [rsp+48]	# _1, %sfp
	mov	QWORD PTR [rsp+64], rcx	# %sfp, ivtmp.109
	neg	r12	# _184
	mov	QWORD PTR [rsp+120], rbx	# %sfp, _35
	shr	r12, 2	# _52,
	mov	QWORD PTR [rsp+72], rdx	# %sfp, ivtmp.111
	mov	rdx, r14	# ivtmp.107, ivtmp.107
	lea	r11, [r11+rcx*4]	# ivtmp.95,
	and	r12d, 7	# prologo_56,
	cmp	r12, r13	# prologo_56, N
	cmova	r12, r13	# prologo_56,, prologo_56, N
# src/matmul.c:58:             float       *restrict cj = __builtin_assume_aligned(ci + j, 32);
	xor	r9d, r9d	# ivtmp.97
	lea	r10, [r14+r12*4]	# _120,
	lea	r8, [r12-1]	# _237,
	mov	r14, r12	# _75, _75
	lea	rsi, [r12-4]	# niters.56,
	mov	QWORD PTR [rsp+112], r8	# %sfp, _237
	mov	r12, rdx	# ivtmp.107, ivtmp.107
	mov	QWORD PTR [rsp+128], r10	# %sfp, _120
	mov	QWORD PTR [rsp+96], rsi	# %sfp, niters.56
	.p2align 4,,10
	.p2align 3
.L16:
# src/matmul.c:43:             const float aik = ai[k];
	vmovss	xmm1, DWORD PTR [r11]	# aik, MEM[(const float *)_82]
	lea	rcx, [0+r9*4]	# _279,
	lea	rdi, [r15+rcx]	# _288,
	mov	QWORD PTR [rsp+152], rdi	# %sfp, _288
	vbroadcastss	ymm2, xmm1	# tmp395, aik
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	test	r14, r14	# _75
	je	.L18	#,
	cmp	r14, 1	# _75,
	je	.L4	#,
	mov	rax, QWORD PTR [rsp+120]	# _96, %sfp
	sub	rax, rcx	# _96, _279
	cmp	rax, 8	# _96,
	jbe	.L5	#,
	cmp	QWORD PTR [rsp+112], 2	# %sfp,
	jbe	.L19	#,
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	vmovups	xmm3, XMMWORD PTR [r15+r9*4]	# tmp266, MEM <const vector(4) float> [(const float *)b_46 + ivtmp.97_102 * 4]
	vmovaps	xmm5, xmm2	# _297, tmp395
	vfmadd213ps	xmm3, xmm2, XMMWORD PTR [r12]	# tmp266, _297, MEM <vector(4) float> [(float *)ci_51]
	vmovups	XMMWORD PTR [r12], xmm3	# MEM <vector(4) float> [(float *)ci_51], tmp266
	cmp	r14, 4	# _75,
	je	.L7	#,
	mov	rbx, QWORD PTR [rsp+96]	# niters.56, %sfp
	mov	r10d, 4	# j,
	cmp	rbx, 1	# niters.56,
	mov	r8, rbx	# niters.56, niters.56
	je	.L8	#,
.L6:
	mov	rsi, QWORD PTR [rsp+104]	# ivtmp.110, %sfp
	mov	rcx, QWORD PTR [rsp+88]	# c, %sfp
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	lea	rdi, [r9+r10]	# tmp273,
	vmovq	xmm4, QWORD PTR [r15+rdi*4]	# vect__230.65_296, MEM <const vector(2) float> [(const float *)vectp.64_291]
	lea	rdx, [rsi+r10]	# _286,
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	vmovq	xmm6, QWORD PTR [rcx+rdx*4]	# vect__228.62_290, MEM <vector(2) float> [(float *)vectp.61_285]
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	vfmadd132ps	xmm5, xmm6, xmm4	# tmp280, vect__228.62_290, vect__230.65_296
	vmovlps	QWORD PTR [rcx+rdx*4], xmm5	# MEM <vector(2) float> [(float *)vectp.61_285], tmp280
	cmp	r8, 2	# niters.56,
	je	.L7	#,
	add	r10, 2	# tmp.59,
.L8:
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	mov	rax, QWORD PTR [rsp+152]	# _288, %sfp
	vmovss	xmm7, DWORD PTR [rax+r10*4]	# tmp281, *_271
	vfmadd213ss	xmm7, xmm1, DWORD PTR [r12+r10*4]	# tmp281, aik, *_269
	vmovss	DWORD PTR [r12+r10*4], xmm7	# *_269, tmp281
.L7:
# src/matmul.c:53:             size_t j = 0;
	mov	rdx, QWORD PTR [rsp+128]	# prephitmp_121, %sfp
	mov	r10, r14	# j, _75
.L3:
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	cmp	r10, r13	# j, N
	jnb	.L10	#,
	mov	r8, r13	# niters.27, N
	sub	r8, r10	# niters.27, j
	lea	rdi, [r8-1]	# _138,
	cmp	rdi, 2	# _138,
	jbe	.L11	#,
	lea	rbx, [r10+r9]	# _132,
	mov	rcx, rdx	# _127, prephitmp_121
	lea	rsi, [r15+4+rbx*4]	# _129,
	sub	rcx, rsi	# _127, _129
	cmp	rcx, 24	# _127,
	jbe	.L11	#,
	cmp	rdi, 6	# _138,
	jbe	.L22	#,
	mov	rsi, r8	# bnd.13, niters.27
	lea	rcx, [r15+rbx*4]	# vectp.21,
	vmovaps	ymm15, ymm2	# _140, tmp395
# src/matmul.c:58:             float       *restrict cj = __builtin_assume_aligned(ci + j, 32);
	xor	eax, eax	# ivtmp.87
	shr	rsi, 3	# bnd.13,
	mov	QWORD PTR [rsp+144], rsi	# %sfp, bnd.13
	sal	rsi, 5	# _249,
	lea	rdi, [rsi-32]	# tmp332,
	shr	rdi, 5	# tmp330,
	inc	rdi	# tmp333
	and	edi, 7	# tmp334,
	je	.L13	#,
	cmp	rdi, 1	# tmp334,
	je	.L83	#,
	cmp	rdi, 2	# tmp334,
	je	.L84	#,
	cmp	rdi, 3	# tmp334,
	je	.L85	#,
	cmp	rdi, 4	# tmp334,
	je	.L86	#,
	cmp	rdi, 5	# tmp334,
	je	.L87	#,
	cmp	rdi, 6	# tmp334,
	je	.L88	#,
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	vmovups	ymm0, YMMWORD PTR [rcx]	# tmp379, MEM <const vector(8) float> [(const float *)vectp.21_32 + ivtmp.87_251 * 1]
	mov	eax, 32	# ivtmp.87,
	vfmadd213ps	ymm0, ymm2, YMMWORD PTR [rdx]	# tmp379, _140, MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1]
	vmovaps	YMMWORD PTR [rdx], ymm0	# MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1], tmp379
.L88:
	vmovups	ymm5, YMMWORD PTR [rcx+rax]	# tmp381, MEM <const vector(8) float> [(const float *)vectp.21_32 + ivtmp.87_251 * 1]
	vfmadd213ps	ymm5, ymm15, YMMWORD PTR [rdx+rax]	# tmp381, _140, MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1]
	vmovaps	YMMWORD PTR [rdx+rax], ymm5	# MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1], tmp381
	add	rax, 32	# ivtmp.87,
.L87:
	vmovups	ymm3, YMMWORD PTR [rcx+rax]	# tmp383, MEM <const vector(8) float> [(const float *)vectp.21_32 + ivtmp.87_251 * 1]
	vfmadd213ps	ymm3, ymm15, YMMWORD PTR [rdx+rax]	# tmp383, _140, MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1]
	vmovaps	YMMWORD PTR [rdx+rax], ymm3	# MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1], tmp383
	add	rax, 32	# ivtmp.87,
.L86:
	vmovups	ymm4, YMMWORD PTR [rcx+rax]	# tmp385, MEM <const vector(8) float> [(const float *)vectp.21_32 + ivtmp.87_251 * 1]
	vfmadd213ps	ymm4, ymm15, YMMWORD PTR [rdx+rax]	# tmp385, _140, MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1]
	vmovaps	YMMWORD PTR [rdx+rax], ymm4	# MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1], tmp385
	add	rax, 32	# ivtmp.87,
.L85:
	vmovups	ymm6, YMMWORD PTR [rcx+rax]	# tmp387, MEM <const vector(8) float> [(const float *)vectp.21_32 + ivtmp.87_251 * 1]
	vfmadd213ps	ymm6, ymm15, YMMWORD PTR [rdx+rax]	# tmp387, _140, MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1]
	vmovaps	YMMWORD PTR [rdx+rax], ymm6	# MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1], tmp387
	add	rax, 32	# ivtmp.87,
.L84:
	vmovups	ymm7, YMMWORD PTR [rcx+rax]	# tmp389, MEM <const vector(8) float> [(const float *)vectp.21_32 + ivtmp.87_251 * 1]
	vfmadd213ps	ymm7, ymm15, YMMWORD PTR [rdx+rax]	# tmp389, _140, MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1]
	vmovaps	YMMWORD PTR [rdx+rax], ymm7	# MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1], tmp389
	add	rax, 32	# ivtmp.87,
.L83:
	vmovups	ymm8, YMMWORD PTR [rcx+rax]	# tmp391, MEM <const vector(8) float> [(const float *)vectp.21_32 + ivtmp.87_251 * 1]
	vfmadd213ps	ymm8, ymm15, YMMWORD PTR [rdx+rax]	# tmp391, _140, MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1]
	vmovaps	YMMWORD PTR [rdx+rax], ymm8	# MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1], tmp391
	add	rax, 32	# ivtmp.87,
	cmp	rax, rsi	# ivtmp.87, _249
	je	.L118	#,
.L13:
	vmovups	ymm9, YMMWORD PTR [rcx+rax]	# tmp296, MEM <const vector(8) float> [(const float *)vectp.21_32 + ivtmp.87_251 * 1]
	vfmadd213ps	ymm9, ymm15, YMMWORD PTR [rdx+rax]	# tmp296, _140, MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1]
	vmovaps	YMMWORD PTR [rdx+rax], ymm9	# MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1], tmp296
	vmovups	ymm10, YMMWORD PTR [rcx+32+rax]	# tmp338, MEM <const vector(8) float> [(const float *)vectp.21_32 + ivtmp.87_251 * 1]
	vfmadd213ps	ymm10, ymm15, YMMWORD PTR [rdx+32+rax]	# tmp338, _140, MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1]
	vmovaps	YMMWORD PTR [rdx+32+rax], ymm10	# MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1], tmp338
	vmovups	ymm11, YMMWORD PTR [rcx+64+rax]	# tmp341, MEM <const vector(8) float> [(const float *)vectp.21_32 + ivtmp.87_251 * 1]
	vfmadd213ps	ymm11, ymm15, YMMWORD PTR [rdx+64+rax]	# tmp341, _140, MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1]
	vmovaps	YMMWORD PTR [rdx+64+rax], ymm11	# MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1], tmp341
	vmovups	ymm12, YMMWORD PTR [rcx+96+rax]	# tmp344, MEM <const vector(8) float> [(const float *)vectp.21_32 + ivtmp.87_251 * 1]
	vfmadd213ps	ymm12, ymm15, YMMWORD PTR [rdx+96+rax]	# tmp344, _140, MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1]
	vmovaps	YMMWORD PTR [rdx+96+rax], ymm12	# MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1], tmp344
	vmovups	ymm13, YMMWORD PTR [rcx+128+rax]	# tmp347, MEM <const vector(8) float> [(const float *)vectp.21_32 + ivtmp.87_251 * 1]
	vfmadd213ps	ymm13, ymm15, YMMWORD PTR [rdx+128+rax]	# tmp347, _140, MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1]
	vmovaps	YMMWORD PTR [rdx+128+rax], ymm13	# MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1], tmp347
	vmovups	ymm14, YMMWORD PTR [rcx+160+rax]	# tmp350, MEM <const vector(8) float> [(const float *)vectp.21_32 + ivtmp.87_251 * 1]
	vfmadd213ps	ymm14, ymm15, YMMWORD PTR [rdx+160+rax]	# tmp350, _140, MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1]
	vmovaps	YMMWORD PTR [rdx+160+rax], ymm14	# MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1], tmp350
	vmovups	ymm0, YMMWORD PTR [rcx+192+rax]	# tmp353, MEM <const vector(8) float> [(const float *)vectp.21_32 + ivtmp.87_251 * 1]
	vfmadd213ps	ymm0, ymm15, YMMWORD PTR [rdx+192+rax]	# tmp353, _140, MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1]
	vmovaps	YMMWORD PTR [rdx+192+rax], ymm0	# MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1], tmp353
	vmovups	ymm5, YMMWORD PTR [rcx+224+rax]	# tmp356, MEM <const vector(8) float> [(const float *)vectp.21_32 + ivtmp.87_251 * 1]
	vfmadd213ps	ymm5, ymm15, YMMWORD PTR [rdx+224+rax]	# tmp356, _140, MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1]
	vmovaps	YMMWORD PTR [rdx+224+rax], ymm5	# MEM <vector(8) float> [(float *)cj_58 + ivtmp.87_251 * 1], tmp356
	add	rax, 256	# ivtmp.87,
	cmp	rax, rsi	# ivtmp.87, _249
	jne	.L13	#,
.L118:
	mov	rdi, QWORD PTR [rsp+144]	# bnd.13, %sfp
	sal	rdi, 3	# bnd.13,
	cmp	rdi, r8	# tmp.31, niters.27
	je	.L10	#,
	sub	r8, rdi	# niters.27, tmp.31
	lea	rax, [rdi+r10]	# tmp.30,
	lea	rcx, [r8-1]	# _170,
	cmp	rcx, 2	# _170,
	jbe	.L14	#,
.L12:
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	vmovaps	xmm15, XMMWORD PTR [rdx+rdi*4]	# tmp485, MEM <vector(4) float> [(float *)vectp_cj.33_178]
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	add	rbx, rdi	# tmp301, tmp.31
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	vfmadd132ps	xmm2, xmm15, XMMWORD PTR [r15+rbx*4]	# tmp300, tmp485, MEM <const vector(4) float> [(const float *)vectp.36_183]
	mov	rbx, r8	# niters_vector_mult_vf.29, niters.27
	and	rbx, -4	# niters_vector_mult_vf.29,
	and	r8d, 3	# niters.27,
	vmovaps	XMMWORD PTR [rdx+rdi*4], xmm2	# MEM <vector(4) float> [(float *)vectp_cj.33_178], tmp300
	je	.L10	#,
	add	rax, rbx	# tmp.30, niters_vector_mult_vf.29
	add	rdi, rbx	# tmp.31, niters_vector_mult_vf.29
.L14:
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	mov	rsi, QWORD PTR [rsp+152]	# _288, %sfp
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	lea	r8, [0+rdi*4]	# _16,
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	vmovss	xmm2, DWORD PTR [rsi+rax*4]	# tmp305, *_20
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	lea	rax, [rdi+1+r10]	# _229,
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	vfmadd213ss	xmm2, xmm1, DWORD PTR [rdx+r8]	# tmp305, aik, *_17
	vmovss	DWORD PTR [rdx+r8], xmm2	# *_17, tmp305
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	cmp	rax, r13	# _229, N
	jnb	.L10	#,
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	vmovss	xmm3, DWORD PTR [rsi+rax*4]	# tmp308, *_23
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	lea	r10, [rdi+2+r10]	# _28,
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	vfmadd213ss	xmm3, xmm1, DWORD PTR [rdx+4+r8]	# tmp308, aik, *_236
	vmovss	DWORD PTR [rdx+4+r8], xmm3	# *_236, tmp308
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	cmp	r10, r13	# _28, N
	jnb	.L10	#,
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	vmovss	xmm4, DWORD PTR [rdx+8+r8]	# tmp492, *_155
	vfmadd132ss	xmm1, xmm4, DWORD PTR [rsi+r10*4]	# tmp311, tmp492, *_158
	vmovss	DWORD PTR [rdx+8+r8], xmm1	# *_155, tmp311
.L10:
# src/matmul.c:42:         for (uint64_t k = 0; k < K; k++) {
	add	r11, 4	# ivtmp.95,
	add	r9, r13	# ivtmp.97, N
	cmp	r11, QWORD PTR [rsp+136]	# ivtmp.95, %sfp
	jne	.L16	#,
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	inc	QWORD PTR [rsp+80]	# %sfp
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	mov	r8, QWORD PTR [rsp+32]	# _87, %sfp
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	mov	rdx, QWORD PTR [rsp+72]	# ivtmp.111, %sfp
	mov	rcx, QWORD PTR [rsp+64]	# ivtmp.109, %sfp
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	mov	r9, QWORD PTR [rsp+24]	# _316, %sfp
	add	QWORD PTR [rsp+104], r13	# %sfp, N
	lea	r14, [r12+r8]	# ivtmp.107,
	add	rcx, QWORD PTR [rsp+56]	# ivtmp.109, %sfp
	add	rdx, r8	# ivtmp.111, _87
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	mov	r11, QWORD PTR [rsp+80]	# i, %sfp
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	add	QWORD PTR [rsp+136], r9	# %sfp, _316
	cmp	QWORD PTR [rsp+40], r11	# %sfp, i
	jne	.L17	#,
	vzeroupper
.L123:
# src/matmul.c:65: }
	lea	rsp, [rbp-40]	#,
	pop	rbx	#
	pop	r12	#
	pop	r13	#
	pop	r14	#
	pop	r15	#
	pop	rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4,,10
	.p2align 3
.L11:
	.cfi_restore_state
	mov	rdi, QWORD PTR [rsp+152]	# _288, %sfp
	mov	rbx, r8	# tmp328, niters.27
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	xor	esi, esi	# r
	lea	rcx, [rdi+r10*4]	# _262,
	and	ebx, 7	# tmp328,
	je	.L15	#,
	cmp	rbx, 1	# tmp328,
	je	.L89	#,
	cmp	rbx, 2	# tmp328,
	je	.L90	#,
	cmp	rbx, 3	# tmp328,
	je	.L91	#,
	cmp	rbx, 4	# tmp328,
	je	.L92	#,
	cmp	rbx, 5	# tmp328,
	je	.L93	#,
	cmp	rbx, 6	# tmp328,
	je	.L94	#,
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	vmovss	xmm6, DWORD PTR [rcx]	# tmp371, MEM[(const float *)_262 + r_123 * 4]
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	mov	esi, 1	# r,
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	vfmadd213ss	xmm6, xmm1, DWORD PTR [rdx]	# tmp371, aik, MEM[(float *)cj_58 + r_123 * 4]
	vmovss	DWORD PTR [rdx], xmm6	# MEM[(float *)cj_58 + r_123 * 4], tmp371
.L94:
	vmovss	xmm7, DWORD PTR [rcx+rsi*4]	# tmp372, MEM[(const float *)_262 + r_123 * 4]
	vfmadd213ss	xmm7, xmm1, DWORD PTR [rdx+rsi*4]	# tmp372, aik, MEM[(float *)cj_58 + r_123 * 4]
	vmovss	DWORD PTR [rdx+rsi*4], xmm7	# MEM[(float *)cj_58 + r_123 * 4], tmp372
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	inc	rsi	# r
.L93:
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	vmovss	xmm8, DWORD PTR [rcx+rsi*4]	# tmp373, MEM[(const float *)_262 + r_123 * 4]
	vfmadd213ss	xmm8, xmm1, DWORD PTR [rdx+rsi*4]	# tmp373, aik, MEM[(float *)cj_58 + r_123 * 4]
	vmovss	DWORD PTR [rdx+rsi*4], xmm8	# MEM[(float *)cj_58 + r_123 * 4], tmp373
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	inc	rsi	# r
.L92:
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	vmovss	xmm9, DWORD PTR [rcx+rsi*4]	# tmp374, MEM[(const float *)_262 + r_123 * 4]
	vfmadd213ss	xmm9, xmm1, DWORD PTR [rdx+rsi*4]	# tmp374, aik, MEM[(float *)cj_58 + r_123 * 4]
	vmovss	DWORD PTR [rdx+rsi*4], xmm9	# MEM[(float *)cj_58 + r_123 * 4], tmp374
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	inc	rsi	# r
.L91:
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	vmovss	xmm10, DWORD PTR [rcx+rsi*4]	# tmp375, MEM[(const float *)_262 + r_123 * 4]
	vfmadd213ss	xmm10, xmm1, DWORD PTR [rdx+rsi*4]	# tmp375, aik, MEM[(float *)cj_58 + r_123 * 4]
	vmovss	DWORD PTR [rdx+rsi*4], xmm10	# MEM[(float *)cj_58 + r_123 * 4], tmp375
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	inc	rsi	# r
.L90:
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	vmovss	xmm11, DWORD PTR [rcx+rsi*4]	# tmp376, MEM[(const float *)_262 + r_123 * 4]
	vfmadd213ss	xmm11, xmm1, DWORD PTR [rdx+rsi*4]	# tmp376, aik, MEM[(float *)cj_58 + r_123 * 4]
	vmovss	DWORD PTR [rdx+rsi*4], xmm11	# MEM[(float *)cj_58 + r_123 * 4], tmp376
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	inc	rsi	# r
.L89:
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	vmovss	xmm12, DWORD PTR [rcx+rsi*4]	# tmp377, MEM[(const float *)_262 + r_123 * 4]
	vfmadd213ss	xmm12, xmm1, DWORD PTR [rdx+rsi*4]	# tmp377, aik, MEM[(float *)cj_58 + r_123 * 4]
	vmovss	DWORD PTR [rdx+rsi*4], xmm12	# MEM[(float *)cj_58 + r_123 * 4], tmp377
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	inc	rsi	# r
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	cmp	rsi, r8	# r, niters.27
	je	.L10	#,
.L15:
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	vmovss	xmm13, DWORD PTR [rcx+rsi*4]	# tmp313, MEM[(const float *)_262 + r_123 * 4]
	vfmadd213ss	xmm13, xmm1, DWORD PTR [rdx+rsi*4]	# tmp313, aik, MEM[(float *)cj_58 + r_123 * 4]
	vmovss	DWORD PTR [rdx+rsi*4], xmm13	# MEM[(float *)cj_58 + r_123 * 4], tmp313
	vmovss	xmm14, DWORD PTR [rcx+4+rsi*4]	# tmp358, MEM[(const float *)_262 + r_123 * 4]
	vfmadd213ss	xmm14, xmm1, DWORD PTR [rdx+4+rsi*4]	# tmp358, aik, MEM[(float *)cj_58 + r_123 * 4]
	vmovss	DWORD PTR [rdx+4+rsi*4], xmm14	# MEM[(float *)cj_58 + r_123 * 4], tmp358
	vmovss	xmm0, DWORD PTR [rcx+8+rsi*4]	# tmp360, MEM[(const float *)_262 + r_123 * 4]
	vfmadd213ss	xmm0, xmm1, DWORD PTR [rdx+8+rsi*4]	# tmp360, aik, MEM[(float *)cj_58 + r_123 * 4]
	vmovss	DWORD PTR [rdx+8+rsi*4], xmm0	# MEM[(float *)cj_58 + r_123 * 4], tmp360
	vmovss	xmm5, DWORD PTR [rcx+12+rsi*4]	# tmp362, MEM[(const float *)_262 + r_123 * 4]
	vfmadd213ss	xmm5, xmm1, DWORD PTR [rdx+12+rsi*4]	# tmp362, aik, MEM[(float *)cj_58 + r_123 * 4]
	vmovss	DWORD PTR [rdx+12+rsi*4], xmm5	# MEM[(float *)cj_58 + r_123 * 4], tmp362
	vmovss	xmm15, DWORD PTR [rcx+16+rsi*4]	# tmp364, MEM[(const float *)_262 + r_123 * 4]
	vfmadd213ss	xmm15, xmm1, DWORD PTR [rdx+16+rsi*4]	# tmp364, aik, MEM[(float *)cj_58 + r_123 * 4]
	vmovss	DWORD PTR [rdx+16+rsi*4], xmm15	# MEM[(float *)cj_58 + r_123 * 4], tmp364
	vmovss	xmm2, DWORD PTR [rcx+20+rsi*4]	# tmp366, MEM[(const float *)_262 + r_123 * 4]
	vfmadd213ss	xmm2, xmm1, DWORD PTR [rdx+20+rsi*4]	# tmp366, aik, MEM[(float *)cj_58 + r_123 * 4]
	vmovss	DWORD PTR [rdx+20+rsi*4], xmm2	# MEM[(float *)cj_58 + r_123 * 4], tmp366
	vmovss	xmm3, DWORD PTR [rcx+24+rsi*4]	# tmp368, MEM[(const float *)_262 + r_123 * 4]
	vfmadd213ss	xmm3, xmm1, DWORD PTR [rdx+24+rsi*4]	# tmp368, aik, MEM[(float *)cj_58 + r_123 * 4]
	vmovss	DWORD PTR [rdx+24+rsi*4], xmm3	# MEM[(float *)cj_58 + r_123 * 4], tmp368
	vmovss	xmm4, DWORD PTR [rcx+28+rsi*4]	# tmp370, MEM[(const float *)_262 + r_123 * 4]
	vfmadd213ss	xmm4, xmm1, DWORD PTR [rdx+28+rsi*4]	# tmp370, aik, MEM[(float *)cj_58 + r_123 * 4]
	vmovss	DWORD PTR [rdx+28+rsi*4], xmm4	# MEM[(float *)cj_58 + r_123 * 4], tmp370
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	add	rsi, 8	# r,
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	cmp	rsi, r8	# r, niters.27
	jne	.L15	#,
	jmp	.L10	#
.L5:
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	vmovss	xmm8, DWORD PTR [r15+r9*4]	# tmp283, MEM[(const float *)b_46 + ivtmp.97_102 * 4]
	vfmadd213ss	xmm8, xmm1, DWORD PTR [r12]	# tmp283, aik, MEM[(float *)ci_51]
	vmovss	DWORD PTR [r12], xmm8	# MEM[(float *)ci_51], tmp283
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	vmovss	xmm9, DWORD PTR [r15+4+r9*4]	# tmp284, MEM[(const float *)b_46 + 4B + ivtmp.97_102 * 4]
	vfmadd213ss	xmm9, xmm1, DWORD PTR [r12+4]	# tmp284, aik, MEM[(float *)ci_51 + 4B]
	vmovss	DWORD PTR [r12+4], xmm9	# MEM[(float *)ci_51 + 4B], tmp284
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	cmp	r14, 2	# _75,
	je	.L7	#,
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	vmovss	xmm10, DWORD PTR [r15+8+r9*4]	# tmp285, MEM[(const float *)b_46 + 8B + ivtmp.97_102 * 4]
	vfmadd213ss	xmm10, xmm1, DWORD PTR [r12+8]	# tmp285, aik, MEM[(float *)ci_51 + 8B]
	vmovss	DWORD PTR [r12+8], xmm10	# MEM[(float *)ci_51 + 8B], tmp285
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	cmp	r14, 3	# _75,
	je	.L7	#,
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	vmovss	xmm11, DWORD PTR [r15+12+r9*4]	# tmp286, MEM[(const float *)b_46 + 12B + ivtmp.97_102 * 4]
	vfmadd213ss	xmm11, xmm1, DWORD PTR [r12+12]	# tmp286, aik, MEM[(float *)ci_51 + 12B]
	vmovss	DWORD PTR [r12+12], xmm11	# MEM[(float *)ci_51 + 12B], tmp286
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	cmp	r14, 4	# _75,
	je	.L7	#,
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	vmovss	xmm12, DWORD PTR [r15+16+r9*4]	# tmp287, MEM[(const float *)b_46 + 16B + ivtmp.97_102 * 4]
	vfmadd213ss	xmm12, xmm1, DWORD PTR [r12+16]	# tmp287, aik, MEM[(float *)ci_51 + 16B]
	vmovss	DWORD PTR [r12+16], xmm12	# MEM[(float *)ci_51 + 16B], tmp287
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	cmp	r14, 5	# _75,
	je	.L7	#,
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	vmovss	xmm13, DWORD PTR [r15+20+r9*4]	# tmp288, MEM[(const float *)b_46 + 20B + ivtmp.97_102 * 4]
	vfmadd213ss	xmm13, xmm1, DWORD PTR [r12+20]	# tmp288, aik, MEM[(float *)ci_51 + 20B]
	vmovss	DWORD PTR [r12+20], xmm13	# MEM[(float *)ci_51 + 20B], tmp288
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	cmp	r14, 7	# _75,
	jne	.L21	#,
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	vmovss	xmm14, DWORD PTR [r15+24+r9*4]	# tmp289, MEM[(const float *)b_46 + 24B + ivtmp.97_102 * 4]
	mov	rdx, QWORD PTR [rsp+128]	# prephitmp_121, %sfp
	mov	r10d, 7	# j,
	vfmadd213ss	xmm14, xmm1, DWORD PTR [r12+24]	# tmp289, aik, MEM[(float *)ci_51 + 24B]
	vmovss	DWORD PTR [r12+24], xmm14	# MEM[(float *)ci_51 + 24B], tmp289
	jmp	.L3	#
	.p2align 4,,10
	.p2align 3
.L18:
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	mov	rdx, r12	# prephitmp_121, ivtmp.107
# src/matmul.c:53:             size_t j = 0;
	xor	r10d, r10d	# j
	jmp	.L3	#
	.p2align 4,,10
	.p2align 3
.L4:
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	vmovss	xmm0, DWORD PTR [r15+r9*4]	# tmp282, MEM[(const float *)b_46 + ivtmp.97_102 * 4]
	vfmadd213ss	xmm0, xmm1, DWORD PTR [r12]	# tmp282, aik, MEM[(float *)ci_51]
	vmovss	DWORD PTR [r12], xmm0	# MEM[(float *)ci_51], tmp282
	jmp	.L7	#
.L19:
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	mov	r8, r14	# niters.56, _75
# src/matmul.c:53:             size_t j = 0;
	xor	r10d, r10d	# j
	vmovaps	xmm5, xmm2	# _297, tmp395
	jmp	.L6	#
.L22:
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	mov	rax, r10	# tmp.30, j
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	xor	edi, edi	# tmp.31
	jmp	.L12	#
.L21:
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	mov	rdx, QWORD PTR [rsp+128]	# prephitmp_121, %sfp
	mov	r10d, 6	# j,
	jmp	.L3	#
	.cfi_endproc
.LFE13:
	.size	"matmul_kernel", .-"matmul_kernel"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"C"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"uso: %s <matrizA.bin> <matrizB.bin> <resultado.bin>\n"
	.align 8
.LC2:
	.string	"matmul: dimensoes incompativeis: A %llux%llu, B %llux%llu\n"
	.align 8
.LC5:
	.string	"TEMPO_IO: %.6f | TEMPO_COMP: %.6f | GFLOPS: %.4f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	"main"
	.type	"main", @function
"main":
.LFB14:
	.cfi_startproc
	sub	rsp, 216	#,
	.cfi_def_cfa_offset 224
	mov	QWORD PTR [rsp+168], rbx	#,
	.cfi_offset 3, -56
	mov	rbx, rsi	# argv, argv
# src/matmul.c:70:     setlocale(LC_ALL, "C");
	mov	esi, OFFSET FLAT:.LC0	#,
# src/matmul.c:67: int main(int argc, char **argv) {
	mov	QWORD PTR [rsp+176], rbp	#,
	.cfi_offset 6, -48
	mov	ebp, edi	# argc, argc
# src/matmul.c:70:     setlocale(LC_ALL, "C");
	mov	edi, 6	#,
	call	"setlocale"	#
# src/matmul.c:72:     if (argc != 4) {
	cmp	ebp, 4	# argc,
	jne	.L143	#,
# src/matmul.c:77:     Matriz A = { NULL, 0, 0 };
	vpxor	xmm0, xmm0, xmm0	# tmp153
	xor	eax, eax	#
# src/matmul.c:78:     Matriz B = { NULL, 0, 0 };
	xor	edx, edx	#
# src/matmul.c:79:     Matriz C = { NULL, 0, 0 };
	xor	ecx, ecx	#
# src/timer.h:14:     clock_gettime(CLOCK_MONOTONIC, &ts);
	lea	rsi, [rsp+48]	#,
	mov	edi, 1	#,
	mov	QWORD PTR [rsp+200], r14	#,
# src/matmul.c:77:     Matriz A = { NULL, 0, 0 };
	mov	QWORD PTR [rsp+64], rax	# A.dados,
# src/matmul.c:78:     Matriz B = { NULL, 0, 0 };
	mov	QWORD PTR [rsp+96], rdx	# B.dados,
# src/matmul.c:79:     Matriz C = { NULL, 0, 0 };
	mov	QWORD PTR [rsp+128], rcx	# C.dados,
# src/matmul.c:77:     Matriz A = { NULL, 0, 0 };
	vmovdqu	XMMWORD PTR [rsp+72], xmm0	# MEM <vector(2) long unsigned int> [(long unsigned int *)&A + 8B], tmp153
# src/matmul.c:78:     Matriz B = { NULL, 0, 0 };
	vmovdqu	XMMWORD PTR [rsp+104], xmm0	# MEM <vector(2) long unsigned int> [(long unsigned int *)&B + 8B], tmp153
# src/matmul.c:79:     Matriz C = { NULL, 0, 0 };
	vmovdqu	XMMWORD PTR [rsp+136], xmm0	# MEM <vector(2) long unsigned int> [(long unsigned int *)&C + 8B], tmp153
	.cfi_offset 14, -24
# src/timer.h:14:     clock_gettime(CLOCK_MONOTONIC, &ts);
	call	"clock_gettime"	#
# src/matmul.c:83:     if (bin_ler_matriz(argv[1], &A) != 0) {
	mov	rdi, QWORD PTR [rbx+8]	# MEM[(char * *)argv_42(D) + 8B], MEM[(char * *)argv_42(D) + 8B]
	lea	rsi, [rsp+64]	# tmp263,
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	r14, QWORD PTR [rsp+48]	# _68, MEM[(struct timespec *)_37].tv_sec
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	rbp, QWORD PTR [rsp+56]	# _70, MEM[(struct timespec *)_37].tv_nsec
# src/matmul.c:83:     if (bin_ler_matriz(argv[1], &A) != 0) {
	call	"bin_ler_matriz"	#
# src/matmul.c:83:     if (bin_ler_matriz(argv[1], &A) != 0) {
	test	eax, eax	# _4
	je	.L129	#,
.L131:
	mov	r14, QWORD PTR [rsp+200]	#,
	.cfi_restore 14
# src/matmul.c:84:         return 1;
	mov	ebx, 1	# <retval>,
.L126:
# src/matmul.c:134: }
	mov	eax, ebx	#, <retval>
	mov	rbp, QWORD PTR [rsp+176]	#,
	mov	rbx, QWORD PTR [rsp+168]	#,
	add	rsp, 216	#,
	.cfi_def_cfa_offset 8
	ret	
.L129:
	.cfi_def_cfa_offset 224
	.cfi_offset 14, -24
# src/timer.h:14:     clock_gettime(CLOCK_MONOTONIC, &ts);
	lea	rsi, [rsp+48]	#,
	mov	edi, 1	#,
	call	"clock_gettime"	#
# src/matmul.c:87:     if (bin_ler_matriz(argv[2], &B) != 0) {
	mov	rdi, QWORD PTR [rbx+16]	# MEM[(char * *)argv_42(D) + 16B], MEM[(char * *)argv_42(D) + 16B]
	lea	rsi, [rsp+96]	# tmp264,
	call	"bin_ler_matriz"	#
# src/matmul.c:87:     if (bin_ler_matriz(argv[2], &B) != 0) {
	test	eax, eax	# _6
	jne	.L144	#,
# src/timer.h:14:     clock_gettime(CLOCK_MONOTONIC, &ts);
	lea	rsi, [rsp+48]	#,
	mov	edi, 1	#,
	mov	QWORD PTR [rsp+184], r12	#,
	mov	QWORD PTR [rsp+208], r15	#,
	.cfi_offset 12, -40
	.cfi_offset 15, -16
	call	"clock_gettime"	#
# src/matmul.c:93:     if (A.n != B.m) {
	mov	rcx, QWORD PTR [rsp+80]	# _7, A.n
# src/matmul.c:93:     if (A.n != B.m) {
	mov	r8, QWORD PTR [rsp+104]	# _8, B.m
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	r15, QWORD PTR [rsp+48]	# _74, MEM[(struct timespec *)_37].tv_sec
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	r12, QWORD PTR [rsp+56]	# _76, MEM[(struct timespec *)_37].tv_nsec
# src/matmul.c:96:                 (unsigned long long)B.m, (unsigned long long)B.n);
	mov	r9, QWORD PTR [rsp+112]	# pretmp_110, B.n
# src/matmul.c:95:                 (unsigned long long)A.m, (unsigned long long)A.n,
	mov	rsi, QWORD PTR [rsp+72]	# pretmp_111, A.m
# src/matmul.c:93:     if (A.n != B.m) {
	cmp	rcx, r8	# _7, _8
	je	.L132	#,
# src/matmul.c:94:         fprintf(stderr, "matmul: dimensoes incompativeis: A %llux%llu, B %llux%llu\n",
	mov	rdi, QWORD PTR "stderr"[rip]	#, stderr
	mov	rdx, rsi	#, pretmp_111
	xor	eax, eax	#
	mov	esi, OFFSET FLAT:.LC2	#,
	call	"fprintf"	#
.L142:
# src/matmul.c:103:         matriz_liberar(&A);
	lea	rdi, [rsp+64]	# tmp271,
	call	"matriz_liberar"	#
# src/matmul.c:104:         matriz_liberar(&B);
	lea	rdi, [rsp+96]	# tmp272,
	call	"matriz_liberar"	#
# src/matmul.c:105:         return 1;
	mov	r12, QWORD PTR [rsp+184]	#,
	.cfi_restore 12
	mov	r15, QWORD PTR [rsp+208]	#,
	.cfi_restore 15
	jmp	.L131	#
.L143:
	.cfi_restore 14
# src/matmul.c:73:         fprintf(stderr, "uso: %s <matrizA.bin> <matrizB.bin> <resultado.bin>\n", argv[0]);
	mov	rdx, QWORD PTR [rbx]	#, *argv_42(D)
	mov	rdi, QWORD PTR "stderr"[rip]	#, stderr
	mov	esi, OFFSET FLAT:.LC1	#,
	xor	eax, eax	#
# src/matmul.c:74:         return 2;
	mov	ebx, 2	# <retval>,
# src/matmul.c:73:         fprintf(stderr, "uso: %s <matrizA.bin> <matrizB.bin> <resultado.bin>\n", argv[0]);
	call	"fprintf"	#
# src/matmul.c:74:         return 2;
	jmp	.L126	#
.L132:
	.cfi_offset 12, -40
	.cfi_offset 14, -24
	.cfi_offset 15, -16
# src/matmul.c:102:     if (matriz_alocar(&C, A.m, B.n) != 0) {
	mov	rdx, r9	#, pretmp_110
	lea	rdi, [rsp+128]	# tmp270,
	call	"matriz_alocar"	#
# src/matmul.c:102:     if (matriz_alocar(&C, A.m, B.n) != 0) {
	test	eax, eax	# _14
	jne	.L142	#,
# src/timer.h:14:     clock_gettime(CLOCK_MONOTONIC, &ts);
	lea	rsi, [rsp+48]	#,
	mov	edi, 1	#,
	mov	QWORD PTR [rsp+192], r13	#,
	.cfi_offset 13, -32
# src/timer.h:14:     clock_gettime(CLOCK_MONOTONIC, &ts);
	call	"clock_gettime"	#
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	rsi, QWORD PTR [rsp+48]	# _86, MEM[(struct timespec *)_37].tv_sec
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	rdi, QWORD PTR [rsp+56]	# _88, MEM[(struct timespec *)_37].tv_nsec
# src/matmul.c:110:     matmul_kernel(&A, &B, &C);
	lea	rdx, [rsp+128]	# tmp275,
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	QWORD PTR [rsp+16], rsi	# %sfp, _86
# src/matmul.c:110:     matmul_kernel(&A, &B, &C);
	lea	rsi, [rsp+96]	# tmp276,
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	QWORD PTR [rsp+24], rdi	# %sfp, _88
# src/matmul.c:110:     matmul_kernel(&A, &B, &C);
	lea	rdi, [rsp+64]	# tmp277,
	call	"matmul_kernel"	#
# src/timer.h:14:     clock_gettime(CLOCK_MONOTONIC, &ts);
	lea	rsi, [rsp+48]	#,
	mov	edi, 1	#,
	call	"clock_gettime"	#
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	r8, QWORD PTR [rsp+56]	# _82, MEM[(struct timespec *)_37].tv_nsec
# src/matmul.c:113:     if (bin_escrever_matriz(argv[3], &C) != 0) {
	mov	rdi, QWORD PTR [rbx+24]	# MEM[(char * *)argv_42(D) + 24B], MEM[(char * *)argv_42(D) + 24B]
	lea	rsi, [rsp+128]	# tmp280,
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	r13, QWORD PTR [rsp+48]	# _80, MEM[(struct timespec *)_37].tv_sec
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	QWORD PTR [rsp+8], r8	# %sfp, _82
# src/matmul.c:113:     if (bin_escrever_matriz(argv[3], &C) != 0) {
	call	"bin_escrever_matriz"	#
	mov	ebx, eax	# <retval>, <retval>
# src/matmul.c:113:     if (bin_escrever_matriz(argv[3], &C) != 0) {
	test	eax, eax	# <retval>
	jne	.L145	#,
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vmovsd	xmm5, QWORD PTR .LC3[rip]	# tmp223,
	vxorps	xmm2, xmm2, xmm2	# tmp240
# src/timer.h:14:     clock_gettime(CLOCK_MONOTONIC, &ts);
	lea	rsi, [rsp+48]	#,
	mov	edi, 1	#,
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm4, xmm2, QWORD PTR [rsp+8]	# tmp241, tmp240, %sfp
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm1, xmm2, r13	# tmp242, tmp240, _80
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm6, xmm2, QWORD PTR [rsp+24]	# tmp243, tmp240, %sfp
	vmovaps	XMMWORD PTR [rsp+32], xmm2	# %sfp, tmp240
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vfmadd132sd	xmm4, xmm1, xmm5	# _85, _81, tmp223
	vfnmadd132sd	xmm6, xmm4, xmm5	# _89, _85, tmp223
	vmovsd	QWORD PTR [rsp+24], xmm4	# %sfp, _85
	vmovsd	QWORD PTR [rsp+8], xmm6	# %sfp, _115
# src/timer.h:14:     clock_gettime(CLOCK_MONOTONIC, &ts);
	call	"clock_gettime"	#
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vmovaps	xmm8, XMMWORD PTR [rsp+32]	# tmp240, %sfp
	vmovsd	xmm12, QWORD PTR .LC3[rip]	# tmp223,
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	mov	r9, QWORD PTR [rsp+72]	# A.m, A.m
# src/matmul.c:122:     const double tempo_comp = t4 - t3;
	vmovsd	xmm0, QWORD PTR [rsp+8]	# _115, %sfp
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm3, xmm8, QWORD PTR [rsp+56]	# tmp245, tmp240, MEM[(struct timespec *)_37].tv_nsec
	vcvtsi2sd	xmm9, xmm8, r12	# tmp246, tmp240, _76
	vaddsd	xmm10, xmm3, xmm9	# _122, _95, _77
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm11, xmm8, r15	# tmp247, tmp240, _74
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	test	r9, r9	# A.m
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm13, xmm8, r14	# tmp248, tmp240, _68
	vcvtsi2sd	xmm15, xmm8, QWORD PTR [rsp+16]	# tmp249, tmp240, %sfp
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	vmovsd	xmm4, QWORD PTR [rsp+24]	# _85, %sfp
# src/matmul.c:122:     const double tempo_comp = t4 - t3;
	vsubsd	xmm1, xmm0, xmm15	# tempo_comp, _115, _87
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm7, xmm8, QWORD PTR [rsp+48]	# tmp244, tmp240, MEM[(struct timespec *)_37].tv_sec
	vfmadd132sd	xmm10, xmm11, xmm12	# _116, _75, tmp223
	vsubsd	xmm14, xmm10, xmm13	# _114, _116, _69
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	js	.L135	#,
	vcvtsi2sd	xmm5, xmm8, r9	# tmp250, tmp240, A.m
.L136:
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	mov	r11, QWORD PTR [rsp+80]	# A.n, A.n
	test	r11, r11	# A.n
	js	.L137	#,
	vcvtsi2sd	xmm3, xmm8, r11	# tmp252, tmp240, A.n
.L138:
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	mov	rcx, QWORD PTR [rsp+112]	# B.n, B.n
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	vmulsd	xmm9, xmm5, xmm3	# _10, _20, _22
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	test	rcx, rcx	# B.n
	js	.L139	#,
	vcvtsi2sd	xmm11, xmm8, rcx	# tmp254, tmp240, B.n
.L140:
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	vmulsd	xmm13, xmm11, QWORD PTR .LC4[rip]	# _79, _25,
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	vcvtsi2sd	xmm8, xmm8, rbp	# tmp256, tmp240, _70
# src/matmul.c:121:     const double tempo_io = (t1 - t0) + (t2 - t1) + (t5 - t4);
	vfnmadd132sd	xmm8, xmm7, xmm12	# tmp212, _93, tmp223
# src/matmul.c:127:     printf("TEMPO_IO: %.6f | TEMPO_COMP: %.6f | GFLOPS: %.4f\n",
	mov	edi, OFFSET FLAT:.LC5	#,
	mov	eax, 3	#,
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	vmulsd	xmm15, xmm9, xmm13	# _27, _10, _79
# src/matmul.c:121:     const double tempo_io = (t1 - t0) + (t2 - t1) + (t5 - t4);
	vsubsd	xmm7, xmm8, xmm4	# _121, tmp212, _85
	vaddsd	xmm0, xmm7, xmm14	# tempo_io_48, _121, _114
# src/matmul.c:127:     printf("TEMPO_IO: %.6f | TEMPO_COMP: %.6f | GFLOPS: %.4f\n",
	vdivsd	xmm2, xmm15, xmm1	#, _27, tempo_comp
	call	"printf"	#
# src/matmul.c:130:     matriz_liberar(&A);
	lea	rdi, [rsp+64]	# tmp295,
	call	"matriz_liberar"	#
# src/matmul.c:131:     matriz_liberar(&B);
	lea	rdi, [rsp+96]	# tmp296,
	call	"matriz_liberar"	#
# src/matmul.c:132:     matriz_liberar(&C);
	lea	rdi, [rsp+128]	# tmp297,
	call	"matriz_liberar"	#
	mov	r12, QWORD PTR [rsp+184]	#,
	.cfi_restore 12
	mov	r13, QWORD PTR [rsp+192]	#,
	.cfi_restore 13
	mov	r14, QWORD PTR [rsp+200]	#,
	.cfi_restore 14
	mov	r15, QWORD PTR [rsp+208]	#,
	.cfi_restore 15
# src/matmul.c:133:     return 0;
	jmp	.L126	#
.L144:
	.cfi_offset 14, -24
# src/matmul.c:88:         matriz_liberar(&A);
	lea	rdi, [rsp+64]	# tmp265,
	call	"matriz_liberar"	#
# src/matmul.c:89:         return 1;
	jmp	.L131	#
.L145:
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 15, -16
# src/matmul.c:114:         matriz_liberar(&A);
	lea	rdi, [rsp+64]	# tmp281,
	call	"matriz_liberar"	#
# src/matmul.c:115:         matriz_liberar(&B);
	lea	rdi, [rsp+96]	# tmp282,
	call	"matriz_liberar"	#
# src/matmul.c:116:         matriz_liberar(&C);
	lea	rdi, [rsp+128]	# tmp283,
	call	"matriz_liberar"	#
# src/matmul.c:117:         return 1;
	mov	r12, QWORD PTR [rsp+184]	#,
	.cfi_remember_state
	.cfi_restore 12
	mov	r13, QWORD PTR [rsp+192]	#,
	.cfi_restore 13
	mov	r15, QWORD PTR [rsp+208]	#,
	.cfi_restore 15
	jmp	.L131	#
.L139:
	.cfi_restore_state
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	mov	rdx, rcx	# tmp206, B.n
	and	ecx, 1	# tmp207,
	shr	rdx	# tmp206
	or	rcx, rdx	# tmp233, tmp206
	vcvtsi2sd	xmm10, xmm8, rcx	# tmp255, tmp240, tmp233
	vaddsd	xmm11, xmm10, xmm10	# _25, tmp205, tmp205
	jmp	.L140	#
.L137:
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	mov	rax, r11	# tmp200, A.n
	and	r11d, 1	# tmp201,
	shr	rax	# tmp200
	or	r11, rax	# tmp232, tmp200
	vcvtsi2sd	xmm6, xmm8, r11	# tmp253, tmp240, tmp232
	vaddsd	xmm3, xmm6, xmm6	# _22, tmp199, tmp199
	jmp	.L138	#
.L135:
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	mov	r10, r9	# tmp195, A.m
	and	r9d, 1	# tmp196,
	shr	r10	# tmp195
	or	r9, r10	# tmp231, tmp195
	vcvtsi2sd	xmm2, xmm8, r9	# tmp251, tmp240, tmp231
	vaddsd	xmm5, xmm2, xmm2	# _20, tmp194, tmp194
	jmp	.L136	#
	.cfi_endproc
.LFE14:
	.size	"main", .-"main"
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	-400107883
	.long	1041313291
	.align 8
.LC4:
	.long	-400107883
	.long	1042361867
	.ident	"GCC: (GNU) 16.2.1 20260819 (Red Hat 16.2.1-2)"
	.section	.note.GNU-stack,"",@progbits
