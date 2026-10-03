	.file	"matmul.c"
	.intel_syntax noprefix
# GNU C11 (GCC) version 16.2.1 20260819 (Red Hat 16.2.1-2) (x86_64-redhat-linux)
#	compiled by GNU C version 16.2.1 20260819 (Red Hat 16.2.1-2), GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.4.1, isl version none
# warning: MPC header version 1.4.1 differs from library version 1.4.0.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -mtls-dialect=gnu2 -g -O0 -std=c11 -ffp-contract=fast
	.text
.Ltext0:
	.file 0 "/home/jlv/Documentos/projeto-comppl-1/trabalho_pratico" "src/matmul.c"
	.type	"obter_tempo_segundos", @function
"obter_tempo_segundos":
.LFB0:
	.file 1 "src/timer.h"
	.loc 1 12 49
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
# src/timer.h:14:     clock_gettime(CLOCK_MONOTONIC, &ts);
	.loc 1 14 5
	lea	rax, [rbp-16]	# tmp105,
	mov	rsi, rax	#, tmp105
	mov	edi, 1	#,
	call	"clock_gettime"	#
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	.loc 1 15 22
	mov	rax, QWORD PTR [rbp-16]	# _1, ts.tv_sec
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	.loc 1 15 12
	pxor	xmm1, xmm1	# _2
	cvtsi2sd	xmm1, rax	# _2, _1
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	.loc 1 15 42
	mov	rax, QWORD PTR [rbp-8]	# _3, ts.tv_nsec
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	.loc 1 15 32
	pxor	xmm2, xmm2	# _4
	cvtsi2sd	xmm2, rax	# _4, _3
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	.loc 1 15 51
	movsd	xmm0, QWORD PTR .LC0[rip]	# tmp106,
	mulsd	xmm0, xmm2	# _5, _4
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	.loc 1 15 30
	addsd	xmm0, xmm1	# _8, _2
# src/timer.h:16: }
	.loc 1 16 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	"obter_tempo_segundos", .-"obter_tempo_segundos"
	.globl	"matmul_kernel"
	.type	"matmul_kernel", @function
"matmul_kernel":
.LFB1:
	.file 2 "src/matmul.c"
	.loc 2 25 65
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 176	#,
	mov	QWORD PTR [rbp-152], rdi	# A, A
	mov	QWORD PTR [rbp-160], rsi	# B, B
	mov	QWORD PTR [rbp-168], rdx	# C, C
# src/matmul.c:26:     const uint64_t M = A->m;
	.loc 2 26 20
	mov	rax, QWORD PTR [rbp-152]	# tmp138, A
	mov	rax, QWORD PTR [rax+8]	# tmp139, A_50(D)->m
	mov	QWORD PTR [rbp-40], rax	# M, tmp139
# src/matmul.c:27:     const uint64_t K = A->n;
	.loc 2 27 20
	mov	rax, QWORD PTR [rbp-152]	# tmp140, A
	mov	rax, QWORD PTR [rax+16]	# tmp141, A_50(D)->n
	mov	QWORD PTR [rbp-48], rax	# K, tmp141
# src/matmul.c:28:     const uint64_t N = B->n;
	.loc 2 28 20
	mov	rax, QWORD PTR [rbp-160]	# tmp142, B
	mov	rax, QWORD PTR [rax+16]	# tmp143, B_53(D)->n
	mov	QWORD PTR [rbp-56], rax	# N, tmp143
# src/matmul.c:30:     const float *restrict a = __builtin_assume_aligned(A->dados, MATRIZ_ALINHAMENTO);
	.loc 2 30 57
	mov	rax, QWORD PTR [rbp-152]	# tmp144, A
	mov	rax, QWORD PTR [rax]	# _1, A_50(D)->dados
# src/matmul.c:30:     const float *restrict a = __builtin_assume_aligned(A->dados, MATRIZ_ALINHAMENTO);
	.loc 2 30 31
	mov	QWORD PTR [rbp-64], rax	# a, _1
# src/matmul.c:31:     const float *restrict b = __builtin_assume_aligned(B->dados, MATRIZ_ALINHAMENTO);
	.loc 2 31 57
	mov	rax, QWORD PTR [rbp-160]	# tmp145, B
	mov	rax, QWORD PTR [rax]	# _2, B_53(D)->dados
# src/matmul.c:31:     const float *restrict b = __builtin_assume_aligned(B->dados, MATRIZ_ALINHAMENTO);
	.loc 2 31 31
	mov	QWORD PTR [rbp-72], rax	# b, _2
# src/matmul.c:32:     float       *restrict c = __builtin_assume_aligned(C->dados, MATRIZ_ALINHAMENTO);
	.loc 2 32 57
	mov	rax, QWORD PTR [rbp-168]	# tmp146, C
	mov	rax, QWORD PTR [rax]	# _3, C_57(D)->dados
# src/matmul.c:32:     float       *restrict c = __builtin_assume_aligned(C->dados, MATRIZ_ALINHAMENTO);
	.loc 2 32 31
	mov	QWORD PTR [rbp-80], rax	# c, _3
# src/matmul.c:36:     memset(c, 0, (size_t)(M * N) * sizeof(float));
	.loc 2 36 29
	mov	rax, QWORD PTR [rbp-40]	# tmp147, M
	imul	rax, QWORD PTR [rbp-56]	# _4, N
# src/matmul.c:36:     memset(c, 0, (size_t)(M * N) * sizeof(float));
	.loc 2 36 34
	lea	rdx, [0+rax*4]	# _5,
# src/matmul.c:36:     memset(c, 0, (size_t)(M * N) * sizeof(float));
	.loc 2 36 5
	mov	rax, QWORD PTR [rbp-80]	# tmp148, c
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp148
	call	"memset"	#
.LBB2:
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	.loc 2 38 19
	mov	QWORD PTR [rbp-8], 0	# i,
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	.loc 2 38 5
	jmp	.L4	#
.L12:
.LBB3:
# src/matmul.c:39:         const float *restrict ai = a + i * K;
	.loc 2 39 42
	mov	rax, QWORD PTR [rbp-8]	# tmp149, i
	imul	rax, QWORD PTR [rbp-48]	# _6, K
# src/matmul.c:39:         const float *restrict ai = a + i * K;
	.loc 2 39 38
	lea	rdx, [0+rax*4]	# _7,
# src/matmul.c:39:         const float *restrict ai = a + i * K;
	.loc 2 39 31
	mov	rax, QWORD PTR [rbp-64]	# tmp153, a
	add	rax, rdx	# ai_61, _7
	mov	QWORD PTR [rbp-88], rax	# ai, ai_61
# src/matmul.c:40:         float       *restrict ci = c + i * N;
	.loc 2 40 42
	mov	rax, QWORD PTR [rbp-8]	# tmp154, i
	imul	rax, QWORD PTR [rbp-56]	# _8, N
# src/matmul.c:40:         float       *restrict ci = c + i * N;
	.loc 2 40 38
	lea	rdx, [0+rax*4]	# _9,
# src/matmul.c:40:         float       *restrict ci = c + i * N;
	.loc 2 40 31
	mov	rax, QWORD PTR [rbp-80]	# tmp158, c
	add	rax, rdx	# ci_62, _9
	mov	QWORD PTR [rbp-96], rax	# ci, ci_62
.LBB4:
# src/matmul.c:42:         for (uint64_t k = 0; k < K; k++) {
	.loc 2 42 23
	mov	QWORD PTR [rbp-16], 0	# k,
# src/matmul.c:42:         for (uint64_t k = 0; k < K; k++) {
	.loc 2 42 9
	jmp	.L5	#
.L11:
.LBB5:
# src/matmul.c:43:             const float aik = ai[k];
	.loc 2 43 33
	mov	rax, QWORD PTR [rbp-16]	# tmp159, k
	lea	rdx, [0+rax*4]	# _10,
	mov	rax, QWORD PTR [rbp-88]	# tmp160, ai
	add	rax, rdx	# _11, _10
# src/matmul.c:43:             const float aik = ai[k];
	.loc 2 43 25
	movss	xmm0, DWORD PTR [rax]	# tmp161, *_11
	movss	DWORD PTR [rbp-100], xmm0	# aik, tmp161
# src/matmul.c:44:             const float *restrict bk = b + k * N;
	.loc 2 44 46
	mov	rax, QWORD PTR [rbp-16]	# tmp162, k
	imul	rax, QWORD PTR [rbp-56]	# _12, N
# src/matmul.c:44:             const float *restrict bk = b + k * N;
	.loc 2 44 42
	lea	rdx, [0+rax*4]	# _13,
# src/matmul.c:44:             const float *restrict bk = b + k * N;
	.loc 2 44 35
	mov	rax, QWORD PTR [rbp-72]	# tmp166, b
	add	rax, rdx	# bk_66, _13
	mov	QWORD PTR [rbp-112], rax	# bk, bk_66
# src/matmul.c:52:                 (size_t)((32u - ((uintptr_t)ci & 31u)) & 31u) / sizeof(float);
	.loc 2 52 34
	mov	rax, QWORD PTR [rbp-96]	# ci.0_14, ci
# src/matmul.c:52:                 (size_t)((32u - ((uintptr_t)ci & 31u)) & 31u) / sizeof(float);
	.loc 2 52 17
	neg	rax	# _15
	and	eax, 31	# _16,
# src/matmul.c:51:             const size_t prologo =
	.loc 2 51 26
	shr	rax, 2	# tmp167,
	mov	QWORD PTR [rbp-120], rax	# prologo, tmp167
# src/matmul.c:53:             size_t j = 0;
	.loc 2 53 20
	mov	QWORD PTR [rbp-24], 0	# j,
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	.loc 2 54 13
	jmp	.L6	#
.L8:
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	.loc 2 55 19
	mov	rax, QWORD PTR [rbp-24]	# tmp168, j
	lea	rdx, [0+rax*4]	# _17,
	mov	rax, QWORD PTR [rbp-96]	# tmp169, ci
	add	rax, rdx	# _18, _17
	movss	xmm1, DWORD PTR [rax]	# _19, *_18
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	.loc 2 55 34
	mov	rax, QWORD PTR [rbp-24]	# tmp170, j
	lea	rdx, [0+rax*4]	# _20,
	mov	rax, QWORD PTR [rbp-112]	# tmp171, bk
	add	rax, rdx	# _21, _20
	movss	xmm0, DWORD PTR [rax]	# _22, *_21
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	.loc 2 55 30
	mulss	xmm0, DWORD PTR [rbp-100]	# _23, aik
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	.loc 2 55 19
	mov	rax, QWORD PTR [rbp-24]	# tmp172, j
	lea	rdx, [0+rax*4]	# _24,
	mov	rax, QWORD PTR [rbp-96]	# tmp173, ci
	add	rax, rdx	# _25, _24
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	.loc 2 55 23
	addss	xmm0, xmm1	# _26, _19
	movss	DWORD PTR [rax], xmm0	# *_25, _26
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	.loc 2 54 43 discriminator 1
	add	QWORD PTR [rbp-24], 1	# j,
.L6:
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	.loc 2 54 32 discriminator 2
	mov	rax, QWORD PTR [rbp-24]	# tmp174, j
	cmp	rax, QWORD PTR [rbp-120]	# tmp174, prologo
	jnb	.L7	#,
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	.loc 2 54 32 is_stmt 0 discriminator 3
	mov	rax, QWORD PTR [rbp-24]	# tmp175, j
	cmp	rax, QWORD PTR [rbp-56]	# tmp175, N
	jb	.L8	#,
.L7:
# src/matmul.c:58:             float       *restrict cj = __builtin_assume_aligned(ci + j, 32);
	.loc 2 58 68 is_stmt 1
	mov	rax, QWORD PTR [rbp-24]	# tmp176, j
	lea	rdx, [0+rax*4]	# _27,
# src/matmul.c:58:             float       *restrict cj = __builtin_assume_aligned(ci + j, 32);
	.loc 2 58 40
	mov	rax, QWORD PTR [rbp-96]	# tmp177, ci
	add	rax, rdx	# _28, _27
	mov	QWORD PTR [rbp-128], rax	# cj, _28
# src/matmul.c:59:             const float *restrict bj = bk + j;
	.loc 2 59 43
	mov	rax, QWORD PTR [rbp-24]	# tmp178, j
	lea	rdx, [0+rax*4]	# _29,
# src/matmul.c:59:             const float *restrict bj = bk + j;
	.loc 2 59 35
	mov	rax, QWORD PTR [rbp-112]	# tmp182, bk
	add	rax, rdx	# bj_72, _29
	mov	QWORD PTR [rbp-136], rax	# bj, bj_72
.LBB6:
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	.loc 2 60 27
	mov	QWORD PTR [rbp-32], 0	# r,
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	.loc 2 60 13
	jmp	.L9	#
.L10:
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	.loc 2 61 19
	mov	rax, QWORD PTR [rbp-32]	# tmp183, r
	lea	rdx, [0+rax*4]	# _30,
	mov	rax, QWORD PTR [rbp-128]	# tmp184, cj
	add	rax, rdx	# _31, _30
	movss	xmm1, DWORD PTR [rax]	# _32, *_31
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	.loc 2 61 34
	mov	rax, QWORD PTR [rbp-32]	# tmp185, r
	lea	rdx, [0+rax*4]	# _33,
	mov	rax, QWORD PTR [rbp-136]	# tmp186, bj
	add	rax, rdx	# _34, _33
	movss	xmm0, DWORD PTR [rax]	# _35, *_34
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	.loc 2 61 30
	mulss	xmm0, DWORD PTR [rbp-100]	# _36, aik
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	.loc 2 61 19
	mov	rax, QWORD PTR [rbp-32]	# tmp187, r
	lea	rdx, [0+rax*4]	# _37,
	mov	rax, QWORD PTR [rbp-128]	# tmp188, cj
	add	rax, rdx	# _38, _37
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	.loc 2 61 23
	addss	xmm0, xmm1	# _39, _32
	movss	DWORD PTR [rax], xmm0	# *_38, _39
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	.loc 2 60 46 discriminator 1
	add	QWORD PTR [rbp-32], 1	# r,
.L9:
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	.loc 2 60 36 discriminator 2
	mov	rdx, QWORD PTR [rbp-24]	# tmp189, j
	mov	rax, QWORD PTR [rbp-32]	# tmp190, r
	add	rax, rdx	# _40, tmp189
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	.loc 2 60 40 discriminator 2
	cmp	rax, QWORD PTR [rbp-56]	# _40, N
	jb	.L10	#,
.LBE6:
.LBE5:
# src/matmul.c:42:         for (uint64_t k = 0; k < K; k++) {
	.loc 2 42 38 discriminator 1
	add	QWORD PTR [rbp-16], 1	# k,
.L5:
# src/matmul.c:42:         for (uint64_t k = 0; k < K; k++) {
	.loc 2 42 32 discriminator 2
	mov	rax, QWORD PTR [rbp-16]	# tmp191, k
	cmp	rax, QWORD PTR [rbp-48]	# tmp191, K
	jb	.L11	#,
.LBE4:
.LBE3:
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	.loc 2 38 34 discriminator 1
	add	QWORD PTR [rbp-8], 1	# i,
.L4:
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	.loc 2 38 28 discriminator 2
	mov	rax, QWORD PTR [rbp-8]	# tmp192, i
	cmp	rax, QWORD PTR [rbp-40]	# tmp192, M
	jb	.L12	#,
.LBE2:
# src/matmul.c:65: }
	.loc 2 65 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	"matmul_kernel", .-"matmul_kernel"
	.section	.rodata
.LC1:
	.string	"C"
	.align 8
.LC2:
	.string	"uso: %s <matrizA.bin> <matrizB.bin> <resultado.bin>\n"
	.align 8
.LC3:
	.string	"matmul: dimensoes incompativeis: A %llux%llu, B %llux%llu\n"
	.align 8
.LC5:
	.string	"TEMPO_IO: %.6f | TEMPO_COMP: %.6f | GFLOPS: %.4f\n"
	.text
	.globl	"main"
	.type	"main", @function
"main":
.LFB2:
	.loc 2 67 33
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 176	#,
	mov	DWORD PTR [rbp-164], edi	# argc, argc
	mov	QWORD PTR [rbp-176], rsi	# argv, argv
# src/matmul.c:70:     setlocale(LC_ALL, "C");
	.loc 2 70 5
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	edi, 6	#,
	call	"setlocale"	#
# src/matmul.c:72:     if (argc != 4) {
	.loc 2 72 8
	cmp	DWORD PTR [rbp-164], 4	# argc,
	je	.L14	#,
# src/matmul.c:73:         fprintf(stderr, "uso: %s <matrizA.bin> <matrizB.bin> <resultado.bin>\n", argv[0]);
	.loc 2 73 9
	mov	rax, QWORD PTR [rbp-176]	# tmp135, argv
	mov	rdx, QWORD PTR [rax]	# _1, *argv_52(D)
	mov	rax, QWORD PTR "stderr"[rip]	# stderr.1_2, stderr
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, stderr.1_2
	mov	eax, 0	#,
	call	"fprintf"	#
# src/matmul.c:74:         return 2;
	.loc 2 74 16
	mov	eax, 2	# _36,
	jmp	.L27	#
.L14:
# src/matmul.c:77:     Matriz A = { NULL, 0, 0 };
	.loc 2 77 12
	mov	QWORD PTR [rbp-96], 0	# A.dados,
	mov	QWORD PTR [rbp-88], 0	# A.m,
	mov	QWORD PTR [rbp-80], 0	# A.n,
# src/matmul.c:78:     Matriz B = { NULL, 0, 0 };
	.loc 2 78 12
	mov	QWORD PTR [rbp-128], 0	# B.dados,
	mov	QWORD PTR [rbp-120], 0	# B.m,
	mov	QWORD PTR [rbp-112], 0	# B.n,
# src/matmul.c:79:     Matriz C = { NULL, 0, 0 };
	.loc 2 79 12
	mov	QWORD PTR [rbp-160], 0	# C.dados,
	mov	QWORD PTR [rbp-152], 0	# C.m,
	mov	QWORD PTR [rbp-144], 0	# C.n,
# src/matmul.c:82:     const double t0 = obter_tempo_segundos();
	.loc 2 82 23
	call	"obter_tempo_segundos"	#
	movq	rax, xmm0	# tmp136,
	mov	QWORD PTR [rbp-8], rax	# t0, tmp136
# src/matmul.c:83:     if (bin_ler_matriz(argv[1], &A) != 0) {
	.loc 2 83 28
	mov	rax, QWORD PTR [rbp-176]	# tmp137, argv
	add	rax, 8	# _3,
# src/matmul.c:83:     if (bin_ler_matriz(argv[1], &A) != 0) {
	.loc 2 83 9
	mov	rax, QWORD PTR [rax]	# _4, *_3
	lea	rdx, [rbp-96]	# tmp138,
	mov	rsi, rdx	#, tmp138
	mov	rdi, rax	#, _4
	call	"bin_ler_matriz"	#
# src/matmul.c:83:     if (bin_ler_matriz(argv[1], &A) != 0) {
	.loc 2 83 8 discriminator 1
	test	eax, eax	# _5
	je	.L16	#,
# src/matmul.c:84:         return 1;
	.loc 2 84 16
	mov	eax, 1	# _36,
	jmp	.L27	#
.L16:
# src/matmul.c:86:     const double t1 = obter_tempo_segundos();
	.loc 2 86 23
	call	"obter_tempo_segundos"	#
	movq	rax, xmm0	# tmp139,
	mov	QWORD PTR [rbp-16], rax	# t1, tmp139
# src/matmul.c:87:     if (bin_ler_matriz(argv[2], &B) != 0) {
	.loc 2 87 28
	mov	rax, QWORD PTR [rbp-176]	# tmp140, argv
	add	rax, 16	# _6,
# src/matmul.c:87:     if (bin_ler_matriz(argv[2], &B) != 0) {
	.loc 2 87 9
	mov	rax, QWORD PTR [rax]	# _7, *_6
	lea	rdx, [rbp-128]	# tmp141,
	mov	rsi, rdx	#, tmp141
	mov	rdi, rax	#, _7
	call	"bin_ler_matriz"	#
# src/matmul.c:87:     if (bin_ler_matriz(argv[2], &B) != 0) {
	.loc 2 87 8 discriminator 1
	test	eax, eax	# _8
	je	.L17	#,
# src/matmul.c:88:         matriz_liberar(&A);
	.loc 2 88 9
	lea	rax, [rbp-96]	# tmp142,
	mov	rdi, rax	#, tmp142
	call	"matriz_liberar"	#
# src/matmul.c:89:         return 1;
	.loc 2 89 16
	mov	eax, 1	# _36,
	jmp	.L27	#
.L17:
# src/matmul.c:91:     const double t2 = obter_tempo_segundos();
	.loc 2 91 23
	call	"obter_tempo_segundos"	#
	movq	rax, xmm0	# tmp143,
	mov	QWORD PTR [rbp-24], rax	# t2, tmp143
# src/matmul.c:93:     if (A.n != B.m) {
	.loc 2 93 10
	mov	rdx, QWORD PTR [rbp-80]	# _9, A.n
# src/matmul.c:93:     if (A.n != B.m) {
	.loc 2 93 17
	mov	rax, QWORD PTR [rbp-120]	# _10, B.m
# src/matmul.c:93:     if (A.n != B.m) {
	.loc 2 93 8
	cmp	rdx, rax	# _9, _10
	je	.L18	#,
# src/matmul.c:96:                 (unsigned long long)B.m, (unsigned long long)B.n);
	.loc 2 96 63
	mov	rdi, QWORD PTR [rbp-112]	# _11, B.n
# src/matmul.c:96:                 (unsigned long long)B.m, (unsigned long long)B.n);
	.loc 2 96 38
	mov	rsi, QWORD PTR [rbp-120]	# _12, B.m
# src/matmul.c:95:                 (unsigned long long)A.m, (unsigned long long)A.n,
	.loc 2 95 63
	mov	rcx, QWORD PTR [rbp-80]	# _13, A.n
# src/matmul.c:95:                 (unsigned long long)A.m, (unsigned long long)A.n,
	.loc 2 95 38
	mov	rdx, QWORD PTR [rbp-88]	# _14, A.m
# src/matmul.c:94:         fprintf(stderr, "matmul: dimensoes incompativeis: A %llux%llu, B %llux%llu\n",
	.loc 2 94 9
	mov	rax, QWORD PTR "stderr"[rip]	# stderr.2_15, stderr
	mov	r9, rdi	#, _11
	mov	r8, rsi	#, _12
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, rax	#, stderr.2_15
	mov	eax, 0	#,
	call	"fprintf"	#
# src/matmul.c:97:         matriz_liberar(&A);
	.loc 2 97 9
	lea	rax, [rbp-96]	# tmp144,
	mov	rdi, rax	#, tmp144
	call	"matriz_liberar"	#
# src/matmul.c:98:         matriz_liberar(&B);
	.loc 2 98 9
	lea	rax, [rbp-128]	# tmp145,
	mov	rdi, rax	#, tmp145
	call	"matriz_liberar"	#
# src/matmul.c:99:         return 1;
	.loc 2 99 16
	mov	eax, 1	# _36,
	jmp	.L27	#
.L18:
# src/matmul.c:102:     if (matriz_alocar(&C, A.m, B.n) != 0) {
	.loc 2 102 9
	mov	rdx, QWORD PTR [rbp-112]	# _16, B.n
	mov	rcx, QWORD PTR [rbp-88]	# _17, A.m
	lea	rax, [rbp-160]	# tmp146,
	mov	rsi, rcx	#, _17
	mov	rdi, rax	#, tmp146
	call	"matriz_alocar"	#
# src/matmul.c:102:     if (matriz_alocar(&C, A.m, B.n) != 0) {
	.loc 2 102 8 discriminator 1
	test	eax, eax	# _18
	je	.L19	#,
# src/matmul.c:103:         matriz_liberar(&A);
	.loc 2 103 9
	lea	rax, [rbp-96]	# tmp147,
	mov	rdi, rax	#, tmp147
	call	"matriz_liberar"	#
# src/matmul.c:104:         matriz_liberar(&B);
	.loc 2 104 9
	lea	rax, [rbp-128]	# tmp148,
	mov	rdi, rax	#, tmp148
	call	"matriz_liberar"	#
# src/matmul.c:105:         return 1;
	.loc 2 105 16
	mov	eax, 1	# _36,
	jmp	.L27	#
.L19:
# src/matmul.c:109:     const double t3 = obter_tempo_segundos();
	.loc 2 109 23
	call	"obter_tempo_segundos"	#
	movq	rax, xmm0	# tmp149,
	mov	QWORD PTR [rbp-32], rax	# t3, tmp149
# src/matmul.c:110:     matmul_kernel(&A, &B, &C);
	.loc 2 110 5
	lea	rdx, [rbp-160]	# tmp150,
	lea	rcx, [rbp-128]	# tmp151,
	lea	rax, [rbp-96]	# tmp152,
	mov	rsi, rcx	#, tmp151
	mov	rdi, rax	#, tmp152
	call	"matmul_kernel"	#
# src/matmul.c:111:     const double t4 = obter_tempo_segundos();
	.loc 2 111 23
	call	"obter_tempo_segundos"	#
	movq	rax, xmm0	# tmp153,
	mov	QWORD PTR [rbp-40], rax	# t4, tmp153
# src/matmul.c:113:     if (bin_escrever_matriz(argv[3], &C) != 0) {
	.loc 2 113 33
	mov	rax, QWORD PTR [rbp-176]	# tmp154, argv
	add	rax, 24	# _19,
# src/matmul.c:113:     if (bin_escrever_matriz(argv[3], &C) != 0) {
	.loc 2 113 9
	mov	rax, QWORD PTR [rax]	# _20, *_19
	lea	rdx, [rbp-160]	# tmp155,
	mov	rsi, rdx	#, tmp155
	mov	rdi, rax	#, _20
	call	"bin_escrever_matriz"	#
# src/matmul.c:113:     if (bin_escrever_matriz(argv[3], &C) != 0) {
	.loc 2 113 8 discriminator 1
	test	eax, eax	# _21
	je	.L20	#,
# src/matmul.c:114:         matriz_liberar(&A);
	.loc 2 114 9
	lea	rax, [rbp-96]	# tmp156,
	mov	rdi, rax	#, tmp156
	call	"matriz_liberar"	#
# src/matmul.c:115:         matriz_liberar(&B);
	.loc 2 115 9
	lea	rax, [rbp-128]	# tmp157,
	mov	rdi, rax	#, tmp157
	call	"matriz_liberar"	#
# src/matmul.c:116:         matriz_liberar(&C);
	.loc 2 116 9
	lea	rax, [rbp-160]	# tmp158,
	mov	rdi, rax	#, tmp158
	call	"matriz_liberar"	#
# src/matmul.c:117:         return 1;
	.loc 2 117 16
	mov	eax, 1	# _36,
	jmp	.L27	#
.L20:
# src/matmul.c:119:     const double t5 = obter_tempo_segundos();
	.loc 2 119 23
	call	"obter_tempo_segundos"	#
	movq	rax, xmm0	# tmp159,
	mov	QWORD PTR [rbp-48], rax	# t5, tmp159
# src/matmul.c:121:     const double tempo_io = (t1 - t0) + (t2 - t1) + (t5 - t4);
	.loc 2 121 33
	movsd	xmm0, QWORD PTR [rbp-16]	# tmp160, t1
	movapd	xmm1, xmm0	# tmp160, tmp160
	subsd	xmm1, QWORD PTR [rbp-8]	# tmp160, t0
# src/matmul.c:121:     const double tempo_io = (t1 - t0) + (t2 - t1) + (t5 - t4);
	.loc 2 121 45
	movsd	xmm0, QWORD PTR [rbp-24]	# tmp161, t2
	subsd	xmm0, QWORD PTR [rbp-16]	# _23, t1
# src/matmul.c:121:     const double tempo_io = (t1 - t0) + (t2 - t1) + (t5 - t4);
	.loc 2 121 39
	addsd	xmm1, xmm0	# _24, _23
# src/matmul.c:121:     const double tempo_io = (t1 - t0) + (t2 - t1) + (t5 - t4);
	.loc 2 121 57
	movsd	xmm0, QWORD PTR [rbp-48]	# tmp162, t5
	subsd	xmm0, QWORD PTR [rbp-40]	# _25, t4
# src/matmul.c:121:     const double tempo_io = (t1 - t0) + (t2 - t1) + (t5 - t4);
	.loc 2 121 18
	addsd	xmm0, xmm1	# tempo_io_68, _24
	movsd	QWORD PTR [rbp-56], xmm0	# tempo_io, tempo_io_68
# src/matmul.c:122:     const double tempo_comp = t4 - t3;
	.loc 2 122 18
	movsd	xmm0, QWORD PTR [rbp-40]	# tmp165, t4
	subsd	xmm0, QWORD PTR [rbp-32]	# tempo_comp_69, t3
	movsd	QWORD PTR [rbp-64], xmm0	# tempo_comp, tempo_comp_69
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	.loc 2 124 24
	mov	rax, QWORD PTR [rbp-88]	# _26, A.m
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	.loc 2 124 15
	test	rax, rax	# _26
	js	.L21	#,
	pxor	xmm0, xmm0	# _27
	cvtsi2sd	xmm0, rax	# _27, _26
	jmp	.L22	#
.L21:
	mov	rdx, rax	# tmp167, _26
	shr	rdx	# tmp167
	and	eax, 1	# tmp168,
	or	rdx, rax	# tmp167, tmp168
	pxor	xmm0, xmm0	# tmp166
	cvtsi2sd	xmm0, rdx	# tmp166, tmp167
	addsd	xmm0, xmm0	# _27, tmp166
.L22:
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	.loc 2 124 13
	movapd	xmm1, xmm0	# _27, _27
	addsd	xmm1, xmm0	# _27, _27
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	.loc 2 124 38
	mov	rax, QWORD PTR [rbp-80]	# _29, A.n
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	.loc 2 124 29
	test	rax, rax	# _29
	js	.L23	#,
	pxor	xmm0, xmm0	# _30
	cvtsi2sd	xmm0, rax	# _30, _29
	jmp	.L24	#
.L23:
	mov	rdx, rax	# tmp170, _29
	shr	rdx	# tmp170
	and	eax, 1	# tmp171,
	or	rdx, rax	# tmp170, tmp171
	pxor	xmm0, xmm0	# tmp169
	cvtsi2sd	xmm0, rdx	# tmp169, tmp170
	addsd	xmm0, xmm0	# _30, tmp169
.L24:
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	.loc 2 124 27
	mulsd	xmm1, xmm0	# _31, _30
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	.loc 2 124 52
	mov	rax, QWORD PTR [rbp-112]	# _32, B.n
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	.loc 2 124 43
	test	rax, rax	# _32
	js	.L25	#,
	pxor	xmm0, xmm0	# _33
	cvtsi2sd	xmm0, rax	# _33, _32
	jmp	.L26	#
.L25:
	mov	rdx, rax	# tmp173, _32
	shr	rdx	# tmp173
	and	eax, 1	# tmp174,
	or	rdx, rax	# tmp173, tmp174
	pxor	xmm0, xmm0	# tmp172
	cvtsi2sd	xmm0, rdx	# tmp172, tmp173
	addsd	xmm0, xmm0	# _33, tmp172
.L26:
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	.loc 2 124 41
	mulsd	xmm0, xmm1	# _34, _31
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	.loc 2 124 69
	movsd	xmm2, QWORD PTR [rbp-64]	# tmp175, tempo_comp
	movsd	xmm1, QWORD PTR .LC4[rip]	# tmp176,
	mulsd	xmm1, xmm2	# _35, tmp175
# src/matmul.c:123:     const double gflops =
	.loc 2 123 18
	divsd	xmm0, xmm1	# gflops_70, _35
	movsd	QWORD PTR [rbp-72], xmm0	# gflops, gflops_70
# src/matmul.c:127:     printf("TEMPO_IO: %.6f | TEMPO_COMP: %.6f | GFLOPS: %.4f\n",
	.loc 2 127 5
	movsd	xmm1, QWORD PTR [rbp-72]	# tmp178, gflops
	movsd	xmm0, QWORD PTR [rbp-64]	# tmp179, tempo_comp
	mov	rax, QWORD PTR [rbp-56]	# tmp180, tempo_io
	movapd	xmm2, xmm1	#, tmp178
	movapd	xmm1, xmm0	#, tmp179
	movq	xmm0, rax	#, tmp180
	mov	edi, OFFSET FLAT:.LC5	#,
	mov	eax, 3	#,
	call	"printf"	#
# src/matmul.c:130:     matriz_liberar(&A);
	.loc 2 130 5
	lea	rax, [rbp-96]	# tmp181,
	mov	rdi, rax	#, tmp181
	call	"matriz_liberar"	#
# src/matmul.c:131:     matriz_liberar(&B);
	.loc 2 131 5
	lea	rax, [rbp-128]	# tmp182,
	mov	rdi, rax	#, tmp182
	call	"matriz_liberar"	#
# src/matmul.c:132:     matriz_liberar(&C);
	.loc 2 132 5
	lea	rax, [rbp-160]	# tmp183,
	mov	rdi, rax	#, tmp183
	call	"matriz_liberar"	#
# src/matmul.c:133:     return 0;
	.loc 2 133 12
	mov	eax, 0	# _36,
.L27:
# src/matmul.c:134: }
	.loc 2 134 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	"main", .-"main"
	.section	.rodata
	.align 8
.LC0:
	.long	-400107883
	.long	1041313291
	.align 8
.LC4:
	.long	0
	.long	1104006501
	.text
.Letext0:
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/bits/stdint-uintn.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "/usr/lib/gcc/x86_64-redhat-linux/16/include/stddef.h"
	.file 7 "/usr/include/bits/types/struct_FILE.h"
	.file 8 "/usr/include/bits/types/FILE.h"
	.file 9 "src/matriz.h"
	.file 10 "/usr/include/bits/types/struct_timespec.h"
	.file 11 "/usr/include/bits/types/clockid_t.h"
	.file 12 "/usr/include/time.h"
	.file 13 "/usr/include/stdio.h"
	.file 14 "src/bin.h"
	.file 15 "/usr/include/locale.h"
	.file 16 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x764
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x15
	.long	.LASF79
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x4
	.long	0x33
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x7
	.long	0x33
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	0x3a
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x6
	.long	.LASF10
	.byte	0x3
	.byte	0x2d
	.byte	0x1b
	.long	0x3f
	.uleb128 0x6
	.long	.LASF11
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x75
	.uleb128 0x6
	.long	.LASF12
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x75
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.byte	0xa0
	.byte	0x1a
	.long	0x75
	.uleb128 0x6
	.long	.LASF14
	.byte	0x3
	.byte	0xa9
	.byte	0x1d
	.long	0x4d
	.uleb128 0x17
	.byte	0x8
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.byte	0xc5
	.byte	0x21
	.long	0x75
	.uleb128 0x6
	.long	.LASF16
	.byte	0x4
	.byte	0x1b
	.byte	0x14
	.long	0x7c
	.uleb128 0x7
	.long	0xc6
	.uleb128 0x6
	.long	.LASF17
	.byte	0x5
	.byte	0x53
	.byte	0x1b
	.long	0x3f
	.uleb128 0x6
	.long	.LASF18
	.byte	0x6
	.byte	0xe5
	.byte	0x17
	.long	0x3f
	.uleb128 0x7
	.long	0xe3
	.uleb128 0xe
	.long	.LASF59
	.byte	0xd8
	.byte	0x7
	.byte	0x33
	.long	0x2a3
	.uleb128 0x1
	.long	.LASF19
	.byte	0x7
	.byte	0x35
	.byte	0x7
	.long	0x4d
	.byte	0
	.uleb128 0x1
	.long	.LASF20
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x2e
	.byte	0x8
	.uleb128 0x1
	.long	.LASF21
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x2e
	.byte	0x10
	.uleb128 0x1
	.long	.LASF22
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x2e
	.byte	0x18
	.uleb128 0x1
	.long	.LASF23
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x2e
	.byte	0x20
	.uleb128 0x1
	.long	.LASF24
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x2e
	.byte	0x28
	.uleb128 0x1
	.long	.LASF25
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x2e
	.byte	0x30
	.uleb128 0x1
	.long	.LASF26
	.byte	0x7
	.byte	0x3e
	.byte	0x9
	.long	0x2e
	.byte	0x38
	.uleb128 0x1
	.long	.LASF27
	.byte	0x7
	.byte	0x3f
	.byte	0x9
	.long	0x2e
	.byte	0x40
	.uleb128 0x1
	.long	.LASF28
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x2e
	.byte	0x48
	.uleb128 0x1
	.long	.LASF29
	.byte	0x7
	.byte	0x43
	.byte	0x9
	.long	0x2e
	.byte	0x50
	.uleb128 0x1
	.long	.LASF30
	.byte	0x7
	.byte	0x44
	.byte	0x9
	.long	0x2e
	.byte	0x58
	.uleb128 0x1
	.long	.LASF31
	.byte	0x7
	.byte	0x46
	.byte	0x16
	.long	0x2bc
	.byte	0x60
	.uleb128 0x1
	.long	.LASF32
	.byte	0x7
	.byte	0x48
	.byte	0x14
	.long	0x2c1
	.byte	0x68
	.uleb128 0x1
	.long	.LASF33
	.byte	0x7
	.byte	0x4a
	.byte	0x7
	.long	0x4d
	.byte	0x70
	.uleb128 0x18
	.long	.LASF80
	.byte	0x7
	.byte	0x4b
	.byte	0x7
	.long	0x4d
	.byte	0x18
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF34
	.byte	0x7
	.byte	0x4d
	.byte	0x8
	.long	0x2c6
	.byte	0x77
	.uleb128 0x1
	.long	.LASF35
	.byte	0x7
	.byte	0x4e
	.byte	0xb
	.long	0x88
	.byte	0x78
	.uleb128 0x1
	.long	.LASF36
	.byte	0x7
	.byte	0x51
	.byte	0x12
	.long	0x46
	.byte	0x80
	.uleb128 0x1
	.long	.LASF37
	.byte	0x7
	.byte	0x52
	.byte	0xf
	.long	0x67
	.byte	0x82
	.uleb128 0x1
	.long	.LASF38
	.byte	0x7
	.byte	0x53
	.byte	0x8
	.long	0x2c6
	.byte	0x83
	.uleb128 0x1
	.long	.LASF39
	.byte	0x7
	.byte	0x55
	.byte	0xf
	.long	0x2d6
	.byte	0x88
	.uleb128 0x1
	.long	.LASF40
	.byte	0x7
	.byte	0x5d
	.byte	0xd
	.long	0x94
	.byte	0x90
	.uleb128 0x1
	.long	.LASF41
	.byte	0x7
	.byte	0x5f
	.byte	0x17
	.long	0x2e0
	.byte	0x98
	.uleb128 0x1
	.long	.LASF42
	.byte	0x7
	.byte	0x60
	.byte	0x19
	.long	0x2ea
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF43
	.byte	0x7
	.byte	0x61
	.byte	0x14
	.long	0x2c1
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF44
	.byte	0x7
	.byte	0x62
	.byte	0x9
	.long	0xb8
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF45
	.byte	0x7
	.byte	0x63
	.byte	0x15
	.long	0x2ef
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF46
	.byte	0x7
	.byte	0x64
	.byte	0x7
	.long	0x4d
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF47
	.byte	0x7
	.byte	0x66
	.byte	0x7
	.long	0x4d
	.byte	0xc4
	.uleb128 0x1
	.long	.LASF48
	.byte	0x7
	.byte	0x68
	.byte	0xe
	.long	0x7c
	.byte	0xc8
	.uleb128 0x1
	.long	.LASF49
	.byte	0x7
	.byte	0x6d
	.byte	0x8
	.long	0x2f4
	.byte	0xd0
	.byte	0
	.uleb128 0x6
	.long	.LASF50
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0xf4
	.uleb128 0x19
	.long	.LASF81
	.byte	0x7
	.byte	0x2d
	.byte	0xe
	.uleb128 0xb
	.long	.LASF51
	.uleb128 0x4
	.long	0x2b7
	.uleb128 0x4
	.long	0xf4
	.uleb128 0xf
	.long	0x33
	.long	0x2d6
	.uleb128 0x10
	.long	0x3f
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x2af
	.uleb128 0xb
	.long	.LASF52
	.uleb128 0x4
	.long	0x2db
	.uleb128 0xb
	.long	.LASF53
	.uleb128 0x4
	.long	0x2e5
	.uleb128 0x4
	.long	0x2c1
	.uleb128 0xf
	.long	0x33
	.long	0x304
	.uleb128 0x10
	.long	0x3f
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	0x2a3
	.uleb128 0x1a
	.long	.LASF82
	.byte	0xd
	.byte	0x9b
	.byte	0xe
	.long	0x304
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF54
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.long	.LASF55
	.uleb128 0x1b
	.byte	0x18
	.byte	0x9
	.byte	0xe
	.byte	0x9
	.long	0x34c
	.uleb128 0x1
	.long	.LASF56
	.byte	0x9
	.byte	0xf
	.byte	0xe
	.long	0x34c
	.byte	0
	.uleb128 0x11
	.string	"m"
	.byte	0x10
	.long	0xc6
	.byte	0x8
	.uleb128 0x11
	.string	"n"
	.byte	0x11
	.long	0xc6
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	0x356
	.uleb128 0x12
	.long	0x34c
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF57
	.uleb128 0x7
	.long	0x356
	.uleb128 0x6
	.long	.LASF58
	.byte	0x9
	.byte	0x12
	.byte	0x3
	.long	0x323
	.uleb128 0x7
	.long	0x362
	.uleb128 0xe
	.long	.LASF60
	.byte	0x10
	.byte	0xa
	.byte	0xb
	.long	0x39a
	.uleb128 0x1
	.long	.LASF61
	.byte	0xa
	.byte	0x10
	.byte	0xc
	.long	0xa0
	.byte	0
	.uleb128 0x1
	.long	.LASF62
	.byte	0xa
	.byte	0x15
	.byte	0x15
	.long	0xba
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF63
	.byte	0xb
	.byte	0x7
	.byte	0x15
	.long	0xac
	.uleb128 0xc
	.long	.LASF64
	.byte	0xc
	.value	0x129
	.long	0x4d
	.long	0x3c1
	.uleb128 0x3
	.long	0x39a
	.uleb128 0x3
	.long	0x3c1
	.byte	0
	.uleb128 0x4
	.long	0x373
	.uleb128 0xc
	.long	.LASF65
	.byte	0xd
	.value	0x172
	.long	0x4d
	.long	0x3dd
	.uleb128 0x3
	.long	0x54
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.byte	0xe
	.byte	0x13
	.byte	0x5
	.long	0x4d
	.long	0x3f8
	.uleb128 0x3
	.long	0x54
	.uleb128 0x3
	.long	0x3f8
	.byte	0
	.uleb128 0x4
	.long	0x36e
	.uleb128 0x8
	.long	.LASF67
	.byte	0x9
	.byte	0x15
	.byte	0x5
	.long	0x4d
	.long	0x41d
	.uleb128 0x3
	.long	0x41d
	.uleb128 0x3
	.long	0xc6
	.uleb128 0x3
	.long	0xc6
	.byte	0
	.uleb128 0x4
	.long	0x362
	.uleb128 0x1c
	.long	.LASF83
	.byte	0x9
	.byte	0x18
	.byte	0x6
	.long	0x434
	.uleb128 0x3
	.long	0x41d
	.byte	0
	.uleb128 0x8
	.long	.LASF68
	.byte	0xe
	.byte	0xf
	.byte	0x5
	.long	0x4d
	.long	0x44f
	.uleb128 0x3
	.long	0x54
	.uleb128 0x3
	.long	0x41d
	.byte	0
	.uleb128 0xc
	.long	.LASF69
	.byte	0xd
	.value	0x16c
	.long	0x4d
	.long	0x46b
	.uleb128 0x3
	.long	0x304
	.uleb128 0x3
	.long	0x54
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.long	.LASF70
	.byte	0xf
	.byte	0x7a
	.byte	0xe
	.long	0x2e
	.long	0x486
	.uleb128 0x3
	.long	0x4d
	.uleb128 0x3
	.long	0x54
	.byte	0
	.uleb128 0x8
	.long	.LASF71
	.byte	0x10
	.byte	0x41
	.byte	0xe
	.long	0xb8
	.long	0x4a6
	.uleb128 0x3
	.long	0xb8
	.uleb128 0x3
	.long	0x4d
	.uleb128 0x3
	.long	0x3f
	.byte	0
	.uleb128 0x1d
	.long	.LASF84
	.byte	0x2
	.byte	0x43
	.byte	0x5
	.long	0x4d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x592
	.uleb128 0x14
	.long	.LASF72
	.byte	0x43
	.byte	0xe
	.long	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x14
	.long	.LASF73
	.byte	0x43
	.byte	0x1b
	.long	0x592
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2
	.string	"A"
	.byte	0x2
	.byte	0x4d
	.byte	0xc
	.long	0x362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2
	.string	"B"
	.byte	0x2
	.byte	0x4e
	.byte	0xc
	.long	0x362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2
	.string	"C"
	.byte	0x2
	.byte	0x4f
	.byte	0xc
	.long	0x362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2
	.string	"t0"
	.byte	0x2
	.byte	0x52
	.byte	0x12
	.long	0x59e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"t1"
	.byte	0x2
	.byte	0x56
	.byte	0x12
	.long	0x59e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.string	"t2"
	.byte	0x2
	.byte	0x5b
	.byte	0x12
	.long	0x59e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"t3"
	.byte	0x2
	.byte	0x6d
	.byte	0x12
	.long	0x59e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"t4"
	.byte	0x2
	.byte	0x6f
	.byte	0x12
	.long	0x59e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"t5"
	.byte	0x2
	.byte	0x77
	.byte	0x12
	.long	0x59e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.long	.LASF74
	.byte	0x79
	.byte	0x12
	.long	0x59e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xa
	.long	.LASF75
	.byte	0x7a
	.byte	0x12
	.long	0x59e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xa
	.long	.LASF76
	.byte	0x7b
	.byte	0x12
	.long	0x59e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x4
	.long	0x2e
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.long	.LASF77
	.uleb128 0x7
	.long	0x597
	.uleb128 0x1e
	.long	.LASF85
	.byte	0x2
	.byte	0x19
	.byte	0x6
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x730
	.uleb128 0xd
	.string	"A"
	.byte	0x22
	.long	0x3f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0xd
	.string	"B"
	.byte	0x33
	.long	0x3f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0xd
	.string	"C"
	.byte	0x3e
	.long	0x41d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2
	.string	"M"
	.byte	0x2
	.byte	0x1a
	.byte	0x14
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"K"
	.byte	0x2
	.byte	0x1b
	.byte	0x14
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"N"
	.byte	0x2
	.byte	0x1c
	.byte	0x14
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.string	"a"
	.byte	0x2
	.byte	0x1e
	.byte	0x1b
	.long	0x735
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.string	"b"
	.byte	0x2
	.byte	0x1f
	.byte	0x1b
	.long	0x735
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.string	"c"
	.byte	0x2
	.byte	0x20
	.byte	0x1b
	.long	0x351
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x9
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2
	.string	"i"
	.byte	0x2
	.byte	0x26
	.byte	0x13
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2
	.string	"ai"
	.byte	0x2
	.byte	0x27
	.byte	0x1f
	.long	0x735
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.string	"ci"
	.byte	0x2
	.byte	0x28
	.byte	0x1f
	.long	0x351
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x9
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2
	.string	"k"
	.byte	0x2
	.byte	0x2a
	.byte	0x17
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2
	.string	"aik"
	.byte	0x2
	.byte	0x2b
	.byte	0x19
	.long	0x35d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2
	.string	"bk"
	.byte	0x2
	.byte	0x2c
	.byte	0x23
	.long	0x735
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xa
	.long	.LASF78
	.byte	0x33
	.byte	0x1a
	.long	0xef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2
	.string	"j"
	.byte	0x2
	.byte	0x35
	.byte	0x14
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"cj"
	.byte	0x2
	.byte	0x3a
	.byte	0x23
	.long	0x351
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2
	.string	"bj"
	.byte	0x2
	.byte	0x3b
	.byte	0x23
	.long	0x735
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x9
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2
	.string	"r"
	.byte	0x2
	.byte	0x3c
	.byte	0x1b
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x35d
	.uleb128 0x12
	.long	0x730
	.uleb128 0x1f
	.long	.LASF86
	.byte	0x1
	.byte	0xc
	.byte	0x16
	.long	0x597
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.string	"ts"
	.byte	0x1
	.byte	0xd
	.byte	0x15
	.long	0x373
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 25
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF65:
	.string	"printf"
.LASF11:
	.string	"__off_t"
.LASF20:
	.string	"_IO_read_ptr"
.LASF32:
	.string	"_chain"
.LASF38:
	.string	"_shortbuf"
.LASF18:
	.string	"size_t"
.LASF17:
	.string	"uintptr_t"
.LASF16:
	.string	"uint64_t"
.LASF26:
	.string	"_IO_buf_base"
.LASF64:
	.string	"clock_gettime"
.LASF41:
	.string	"_codecvt"
.LASF54:
	.string	"long long int"
.LASF7:
	.string	"signed char"
.LASF33:
	.string	"_fileno"
.LASF21:
	.string	"_IO_read_end"
.LASF75:
	.string	"tempo_comp"
.LASF9:
	.string	"long int"
.LASF19:
	.string	"_flags"
.LASF27:
	.string	"_IO_buf_end"
.LASF36:
	.string	"_cur_column"
.LASF52:
	.string	"_IO_codecvt"
.LASF77:
	.string	"double"
.LASF35:
	.string	"_old_offset"
.LASF40:
	.string	"_offset"
.LASF51:
	.string	"_IO_marker"
.LASF34:
	.string	"_short_backupbuf"
.LASF6:
	.string	"unsigned int"
.LASF44:
	.string	"_freeres_buf"
.LASF69:
	.string	"fprintf"
.LASF60:
	.string	"timespec"
.LASF3:
	.string	"long unsigned int"
.LASF24:
	.string	"_IO_write_ptr"
.LASF56:
	.string	"dados"
.LASF58:
	.string	"Matriz"
.LASF4:
	.string	"short unsigned int"
.LASF86:
	.string	"obter_tempo_segundos"
.LASF28:
	.string	"_IO_save_base"
.LASF39:
	.string	"_lock"
.LASF76:
	.string	"gflops"
.LASF80:
	.string	"_flags2"
.LASF46:
	.string	"_mode"
.LASF70:
	.string	"setlocale"
.LASF62:
	.string	"tv_nsec"
.LASF55:
	.string	"long double"
.LASF61:
	.string	"tv_sec"
.LASF15:
	.string	"__syscall_slong_t"
.LASF25:
	.string	"_IO_write_end"
.LASF45:
	.string	"_prevchain"
.LASF81:
	.string	"_IO_lock_t"
.LASF59:
	.string	"_IO_FILE"
.LASF68:
	.string	"bin_ler_matriz"
.LASF82:
	.string	"stderr"
.LASF10:
	.string	"__uint64_t"
.LASF57:
	.string	"float"
.LASF85:
	.string	"matmul_kernel"
.LASF83:
	.string	"matriz_liberar"
.LASF31:
	.string	"_markers"
.LASF14:
	.string	"__clockid_t"
.LASF5:
	.string	"unsigned char"
.LASF8:
	.string	"short int"
.LASF53:
	.string	"_IO_wide_data"
.LASF37:
	.string	"_vtable_offset"
.LASF50:
	.string	"FILE"
.LASF2:
	.string	"char"
.LASF12:
	.string	"__off64_t"
.LASF22:
	.string	"_IO_read_base"
.LASF30:
	.string	"_IO_save_end"
.LASF63:
	.string	"clockid_t"
.LASF13:
	.string	"__time_t"
.LASF49:
	.string	"_unused2"
.LASF47:
	.string	"_unused3"
.LASF73:
	.string	"argv"
.LASF71:
	.string	"memset"
.LASF29:
	.string	"_IO_backup_base"
.LASF66:
	.string	"bin_escrever_matriz"
.LASF72:
	.string	"argc"
.LASF43:
	.string	"_freeres_list"
.LASF78:
	.string	"prologo"
.LASF42:
	.string	"_wide_data"
.LASF79:
	.string	"GNU C11 16.2.1 20260819 (Red Hat 16.2.1-2) -masm=intel -mtune=generic -march=x86-64 -mtls-dialect=gnu2 -g -O0 -std=c11 -ffp-contract=fast"
.LASF84:
	.string	"main"
.LASF23:
	.string	"_IO_write_base"
.LASF67:
	.string	"matriz_alocar"
.LASF74:
	.string	"tempo_io"
.LASF48:
	.string	"_total_written"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"src/matmul.c"
.LASF1:
	.string	"/home/jlv/Documentos/projeto-comppl-1/trabalho_pratico"
	.ident	"GCC: (GNU) 16.2.1 20260819 (Red Hat 16.2.1-2)"
	.section	.note.GNU-stack,"",@progbits
