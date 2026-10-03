	.file	"matmul.c"
	.intel_syntax noprefix
# GNU C11 (GCC) version 16.2.1 20260819 (Red Hat 16.2.1-2) (x86_64-redhat-linux)
#	compiled by GNU C version 16.2.1 20260819 (Red Hat 16.2.1-2), GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.4.1, isl version none
# warning: MPC header version 1.4.1 differs from library version 1.4.0.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -mtls-dialect=gnu2 -O0 -std=c11 -ffp-contract=fast
	.text
	.type	"obter_tempo_segundos", @function
"obter_tempo_segundos":
.LFB0:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
# src/timer.h:14:     clock_gettime(CLOCK_MONOTONIC, &ts);
	lea	rax, [rbp-16]	# tmp105,
	mov	rsi, rax	#, tmp105
	mov	edi, 1	#,
	call	"clock_gettime"	#
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	rax, QWORD PTR [rbp-16]	# _1, ts.tv_sec
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	pxor	xmm1, xmm1	# _2
	cvtsi2sd	xmm1, rax	# _2, _1
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	mov	rax, QWORD PTR [rbp-8]	# _3, ts.tv_nsec
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	pxor	xmm2, xmm2	# _4
	cvtsi2sd	xmm2, rax	# _4, _3
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	movsd	xmm0, QWORD PTR .LC0[rip]	# tmp106,
	mulsd	xmm0, xmm2	# _5, _4
# src/timer.h:15:     return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
	addsd	xmm0, xmm1	# _8, _2
# src/timer.h:16: }
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
	mov	rax, QWORD PTR [rbp-152]	# tmp138, A
	mov	rax, QWORD PTR [rax+8]	# tmp139, A_50(D)->m
	mov	QWORD PTR [rbp-40], rax	# M, tmp139
# src/matmul.c:27:     const uint64_t K = A->n;
	mov	rax, QWORD PTR [rbp-152]	# tmp140, A
	mov	rax, QWORD PTR [rax+16]	# tmp141, A_50(D)->n
	mov	QWORD PTR [rbp-48], rax	# K, tmp141
# src/matmul.c:28:     const uint64_t N = B->n;
	mov	rax, QWORD PTR [rbp-160]	# tmp142, B
	mov	rax, QWORD PTR [rax+16]	# tmp143, B_53(D)->n
	mov	QWORD PTR [rbp-56], rax	# N, tmp143
# src/matmul.c:30:     const float *restrict a = __builtin_assume_aligned(A->dados, MATRIZ_ALINHAMENTO);
	mov	rax, QWORD PTR [rbp-152]	# tmp144, A
	mov	rax, QWORD PTR [rax]	# _1, A_50(D)->dados
# src/matmul.c:30:     const float *restrict a = __builtin_assume_aligned(A->dados, MATRIZ_ALINHAMENTO);
	mov	QWORD PTR [rbp-64], rax	# a, _1
# src/matmul.c:31:     const float *restrict b = __builtin_assume_aligned(B->dados, MATRIZ_ALINHAMENTO);
	mov	rax, QWORD PTR [rbp-160]	# tmp145, B
	mov	rax, QWORD PTR [rax]	# _2, B_53(D)->dados
# src/matmul.c:31:     const float *restrict b = __builtin_assume_aligned(B->dados, MATRIZ_ALINHAMENTO);
	mov	QWORD PTR [rbp-72], rax	# b, _2
# src/matmul.c:32:     float       *restrict c = __builtin_assume_aligned(C->dados, MATRIZ_ALINHAMENTO);
	mov	rax, QWORD PTR [rbp-168]	# tmp146, C
	mov	rax, QWORD PTR [rax]	# _3, C_57(D)->dados
# src/matmul.c:32:     float       *restrict c = __builtin_assume_aligned(C->dados, MATRIZ_ALINHAMENTO);
	mov	QWORD PTR [rbp-80], rax	# c, _3
# src/matmul.c:36:     memset(c, 0, (size_t)(M * N) * sizeof(float));
	mov	rax, QWORD PTR [rbp-40]	# tmp147, M
	imul	rax, QWORD PTR [rbp-56]	# _4, N
# src/matmul.c:36:     memset(c, 0, (size_t)(M * N) * sizeof(float));
	lea	rdx, [0+rax*4]	# _5,
# src/matmul.c:36:     memset(c, 0, (size_t)(M * N) * sizeof(float));
	mov	rax, QWORD PTR [rbp-80]	# tmp148, c
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp148
	call	"memset"	#
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	mov	QWORD PTR [rbp-8], 0	# i,
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	jmp	.L4	#
.L12:
# src/matmul.c:39:         const float *restrict ai = a + i * K;
	mov	rax, QWORD PTR [rbp-8]	# tmp149, i
	imul	rax, QWORD PTR [rbp-48]	# _6, K
# src/matmul.c:39:         const float *restrict ai = a + i * K;
	lea	rdx, [0+rax*4]	# _7,
# src/matmul.c:39:         const float *restrict ai = a + i * K;
	mov	rax, QWORD PTR [rbp-64]	# tmp153, a
	add	rax, rdx	# ai_61, _7
	mov	QWORD PTR [rbp-88], rax	# ai, ai_61
# src/matmul.c:40:         float       *restrict ci = c + i * N;
	mov	rax, QWORD PTR [rbp-8]	# tmp154, i
	imul	rax, QWORD PTR [rbp-56]	# _8, N
# src/matmul.c:40:         float       *restrict ci = c + i * N;
	lea	rdx, [0+rax*4]	# _9,
# src/matmul.c:40:         float       *restrict ci = c + i * N;
	mov	rax, QWORD PTR [rbp-80]	# tmp158, c
	add	rax, rdx	# ci_62, _9
	mov	QWORD PTR [rbp-96], rax	# ci, ci_62
# src/matmul.c:42:         for (uint64_t k = 0; k < K; k++) {
	mov	QWORD PTR [rbp-16], 0	# k,
# src/matmul.c:42:         for (uint64_t k = 0; k < K; k++) {
	jmp	.L5	#
.L11:
# src/matmul.c:43:             const float aik = ai[k];
	mov	rax, QWORD PTR [rbp-16]	# tmp159, k
	lea	rdx, [0+rax*4]	# _10,
	mov	rax, QWORD PTR [rbp-88]	# tmp160, ai
	add	rax, rdx	# _11, _10
# src/matmul.c:43:             const float aik = ai[k];
	movss	xmm0, DWORD PTR [rax]	# tmp161, *_11
	movss	DWORD PTR [rbp-100], xmm0	# aik, tmp161
# src/matmul.c:44:             const float *restrict bk = b + k * N;
	mov	rax, QWORD PTR [rbp-16]	# tmp162, k
	imul	rax, QWORD PTR [rbp-56]	# _12, N
# src/matmul.c:44:             const float *restrict bk = b + k * N;
	lea	rdx, [0+rax*4]	# _13,
# src/matmul.c:44:             const float *restrict bk = b + k * N;
	mov	rax, QWORD PTR [rbp-72]	# tmp166, b
	add	rax, rdx	# bk_66, _13
	mov	QWORD PTR [rbp-112], rax	# bk, bk_66
# src/matmul.c:52:                 (size_t)((32u - ((uintptr_t)ci & 31u)) & 31u) / sizeof(float);
	mov	rax, QWORD PTR [rbp-96]	# ci.0_14, ci
# src/matmul.c:52:                 (size_t)((32u - ((uintptr_t)ci & 31u)) & 31u) / sizeof(float);
	neg	rax	# _15
	and	eax, 31	# _16,
# src/matmul.c:51:             const size_t prologo =
	shr	rax, 2	# tmp167,
	mov	QWORD PTR [rbp-120], rax	# prologo, tmp167
# src/matmul.c:53:             size_t j = 0;
	mov	QWORD PTR [rbp-24], 0	# j,
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	jmp	.L6	#
.L8:
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	mov	rax, QWORD PTR [rbp-24]	# tmp168, j
	lea	rdx, [0+rax*4]	# _17,
	mov	rax, QWORD PTR [rbp-96]	# tmp169, ci
	add	rax, rdx	# _18, _17
	movss	xmm1, DWORD PTR [rax]	# _19, *_18
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	mov	rax, QWORD PTR [rbp-24]	# tmp170, j
	lea	rdx, [0+rax*4]	# _20,
	mov	rax, QWORD PTR [rbp-112]	# tmp171, bk
	add	rax, rdx	# _21, _20
	movss	xmm0, DWORD PTR [rax]	# _22, *_21
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	mulss	xmm0, DWORD PTR [rbp-100]	# _23, aik
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	mov	rax, QWORD PTR [rbp-24]	# tmp172, j
	lea	rdx, [0+rax*4]	# _24,
	mov	rax, QWORD PTR [rbp-96]	# tmp173, ci
	add	rax, rdx	# _25, _24
# src/matmul.c:55:                 ci[j] += aik * bk[j];
	addss	xmm0, xmm1	# _26, _19
	movss	DWORD PTR [rax], xmm0	# *_25, _26
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	add	QWORD PTR [rbp-24], 1	# j,
.L6:
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	mov	rax, QWORD PTR [rbp-24]	# tmp174, j
	cmp	rax, QWORD PTR [rbp-120]	# tmp174, prologo
	jnb	.L7	#,
# src/matmul.c:54:             for (; j < prologo && j < N; j++) {
	mov	rax, QWORD PTR [rbp-24]	# tmp175, j
	cmp	rax, QWORD PTR [rbp-56]	# tmp175, N
	jb	.L8	#,
.L7:
# src/matmul.c:58:             float       *restrict cj = __builtin_assume_aligned(ci + j, 32);
	mov	rax, QWORD PTR [rbp-24]	# tmp176, j
	lea	rdx, [0+rax*4]	# _27,
# src/matmul.c:58:             float       *restrict cj = __builtin_assume_aligned(ci + j, 32);
	mov	rax, QWORD PTR [rbp-96]	# tmp177, ci
	add	rax, rdx	# _28, _27
	mov	QWORD PTR [rbp-128], rax	# cj, _28
# src/matmul.c:59:             const float *restrict bj = bk + j;
	mov	rax, QWORD PTR [rbp-24]	# tmp178, j
	lea	rdx, [0+rax*4]	# _29,
# src/matmul.c:59:             const float *restrict bj = bk + j;
	mov	rax, QWORD PTR [rbp-112]	# tmp182, bk
	add	rax, rdx	# bj_72, _29
	mov	QWORD PTR [rbp-136], rax	# bj, bj_72
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	mov	QWORD PTR [rbp-32], 0	# r,
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	jmp	.L9	#
.L10:
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	mov	rax, QWORD PTR [rbp-32]	# tmp183, r
	lea	rdx, [0+rax*4]	# _30,
	mov	rax, QWORD PTR [rbp-128]	# tmp184, cj
	add	rax, rdx	# _31, _30
	movss	xmm1, DWORD PTR [rax]	# _32, *_31
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	mov	rax, QWORD PTR [rbp-32]	# tmp185, r
	lea	rdx, [0+rax*4]	# _33,
	mov	rax, QWORD PTR [rbp-136]	# tmp186, bj
	add	rax, rdx	# _34, _33
	movss	xmm0, DWORD PTR [rax]	# _35, *_34
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	mulss	xmm0, DWORD PTR [rbp-100]	# _36, aik
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	mov	rax, QWORD PTR [rbp-32]	# tmp187, r
	lea	rdx, [0+rax*4]	# _37,
	mov	rax, QWORD PTR [rbp-128]	# tmp188, cj
	add	rax, rdx	# _38, _37
# src/matmul.c:61:                 cj[r] += aik * bj[r];
	addss	xmm0, xmm1	# _39, _32
	movss	DWORD PTR [rax], xmm0	# *_38, _39
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	add	QWORD PTR [rbp-32], 1	# r,
.L9:
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	mov	rdx, QWORD PTR [rbp-24]	# tmp189, j
	mov	rax, QWORD PTR [rbp-32]	# tmp190, r
	add	rax, rdx	# _40, tmp189
# src/matmul.c:60:             for (uint64_t r = 0; j + r < N; r++) {
	cmp	rax, QWORD PTR [rbp-56]	# _40, N
	jb	.L10	#,
# src/matmul.c:42:         for (uint64_t k = 0; k < K; k++) {
	add	QWORD PTR [rbp-16], 1	# k,
.L5:
# src/matmul.c:42:         for (uint64_t k = 0; k < K; k++) {
	mov	rax, QWORD PTR [rbp-16]	# tmp191, k
	cmp	rax, QWORD PTR [rbp-48]	# tmp191, K
	jb	.L11	#,
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	add	QWORD PTR [rbp-8], 1	# i,
.L4:
# src/matmul.c:38:     for (uint64_t i = 0; i < M; i++) {
	mov	rax, QWORD PTR [rbp-8]	# tmp192, i
	cmp	rax, QWORD PTR [rbp-40]	# tmp192, M
	jb	.L12	#,
# src/matmul.c:65: }
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
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	edi, 6	#,
	call	"setlocale"	#
# src/matmul.c:72:     if (argc != 4) {
	cmp	DWORD PTR [rbp-164], 4	# argc,
	je	.L14	#,
# src/matmul.c:73:         fprintf(stderr, "uso: %s <matrizA.bin> <matrizB.bin> <resultado.bin>\n", argv[0]);
	mov	rax, QWORD PTR [rbp-176]	# tmp135, argv
	mov	rdx, QWORD PTR [rax]	# _1, *argv_52(D)
	mov	rax, QWORD PTR "stderr"[rip]	# stderr.1_2, stderr
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, stderr.1_2
	mov	eax, 0	#,
	call	"fprintf"	#
# src/matmul.c:74:         return 2;
	mov	eax, 2	# _36,
	jmp	.L27	#
.L14:
# src/matmul.c:77:     Matriz A = { NULL, 0, 0 };
	mov	QWORD PTR [rbp-96], 0	# A.dados,
	mov	QWORD PTR [rbp-88], 0	# A.m,
	mov	QWORD PTR [rbp-80], 0	# A.n,
# src/matmul.c:78:     Matriz B = { NULL, 0, 0 };
	mov	QWORD PTR [rbp-128], 0	# B.dados,
	mov	QWORD PTR [rbp-120], 0	# B.m,
	mov	QWORD PTR [rbp-112], 0	# B.n,
# src/matmul.c:79:     Matriz C = { NULL, 0, 0 };
	mov	QWORD PTR [rbp-160], 0	# C.dados,
	mov	QWORD PTR [rbp-152], 0	# C.m,
	mov	QWORD PTR [rbp-144], 0	# C.n,
# src/matmul.c:82:     const double t0 = obter_tempo_segundos();
	call	"obter_tempo_segundos"	#
	movq	rax, xmm0	# tmp136,
	mov	QWORD PTR [rbp-8], rax	# t0, tmp136
# src/matmul.c:83:     if (bin_ler_matriz(argv[1], &A) != 0) {
	mov	rax, QWORD PTR [rbp-176]	# tmp137, argv
	add	rax, 8	# _3,
# src/matmul.c:83:     if (bin_ler_matriz(argv[1], &A) != 0) {
	mov	rax, QWORD PTR [rax]	# _4, *_3
	lea	rdx, [rbp-96]	# tmp138,
	mov	rsi, rdx	#, tmp138
	mov	rdi, rax	#, _4
	call	"bin_ler_matriz"	#
# src/matmul.c:83:     if (bin_ler_matriz(argv[1], &A) != 0) {
	test	eax, eax	# _5
	je	.L16	#,
# src/matmul.c:84:         return 1;
	mov	eax, 1	# _36,
	jmp	.L27	#
.L16:
# src/matmul.c:86:     const double t1 = obter_tempo_segundos();
	call	"obter_tempo_segundos"	#
	movq	rax, xmm0	# tmp139,
	mov	QWORD PTR [rbp-16], rax	# t1, tmp139
# src/matmul.c:87:     if (bin_ler_matriz(argv[2], &B) != 0) {
	mov	rax, QWORD PTR [rbp-176]	# tmp140, argv
	add	rax, 16	# _6,
# src/matmul.c:87:     if (bin_ler_matriz(argv[2], &B) != 0) {
	mov	rax, QWORD PTR [rax]	# _7, *_6
	lea	rdx, [rbp-128]	# tmp141,
	mov	rsi, rdx	#, tmp141
	mov	rdi, rax	#, _7
	call	"bin_ler_matriz"	#
# src/matmul.c:87:     if (bin_ler_matriz(argv[2], &B) != 0) {
	test	eax, eax	# _8
	je	.L17	#,
# src/matmul.c:88:         matriz_liberar(&A);
	lea	rax, [rbp-96]	# tmp142,
	mov	rdi, rax	#, tmp142
	call	"matriz_liberar"	#
# src/matmul.c:89:         return 1;
	mov	eax, 1	# _36,
	jmp	.L27	#
.L17:
# src/matmul.c:91:     const double t2 = obter_tempo_segundos();
	call	"obter_tempo_segundos"	#
	movq	rax, xmm0	# tmp143,
	mov	QWORD PTR [rbp-24], rax	# t2, tmp143
# src/matmul.c:93:     if (A.n != B.m) {
	mov	rdx, QWORD PTR [rbp-80]	# _9, A.n
# src/matmul.c:93:     if (A.n != B.m) {
	mov	rax, QWORD PTR [rbp-120]	# _10, B.m
# src/matmul.c:93:     if (A.n != B.m) {
	cmp	rdx, rax	# _9, _10
	je	.L18	#,
# src/matmul.c:96:                 (unsigned long long)B.m, (unsigned long long)B.n);
	mov	rdi, QWORD PTR [rbp-112]	# _11, B.n
# src/matmul.c:96:                 (unsigned long long)B.m, (unsigned long long)B.n);
	mov	rsi, QWORD PTR [rbp-120]	# _12, B.m
# src/matmul.c:95:                 (unsigned long long)A.m, (unsigned long long)A.n,
	mov	rcx, QWORD PTR [rbp-80]	# _13, A.n
# src/matmul.c:95:                 (unsigned long long)A.m, (unsigned long long)A.n,
	mov	rdx, QWORD PTR [rbp-88]	# _14, A.m
# src/matmul.c:94:         fprintf(stderr, "matmul: dimensoes incompativeis: A %llux%llu, B %llux%llu\n",
	mov	rax, QWORD PTR "stderr"[rip]	# stderr.2_15, stderr
	mov	r9, rdi	#, _11
	mov	r8, rsi	#, _12
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, rax	#, stderr.2_15
	mov	eax, 0	#,
	call	"fprintf"	#
# src/matmul.c:97:         matriz_liberar(&A);
	lea	rax, [rbp-96]	# tmp144,
	mov	rdi, rax	#, tmp144
	call	"matriz_liberar"	#
# src/matmul.c:98:         matriz_liberar(&B);
	lea	rax, [rbp-128]	# tmp145,
	mov	rdi, rax	#, tmp145
	call	"matriz_liberar"	#
# src/matmul.c:99:         return 1;
	mov	eax, 1	# _36,
	jmp	.L27	#
.L18:
# src/matmul.c:102:     if (matriz_alocar(&C, A.m, B.n) != 0) {
	mov	rdx, QWORD PTR [rbp-112]	# _16, B.n
	mov	rcx, QWORD PTR [rbp-88]	# _17, A.m
	lea	rax, [rbp-160]	# tmp146,
	mov	rsi, rcx	#, _17
	mov	rdi, rax	#, tmp146
	call	"matriz_alocar"	#
# src/matmul.c:102:     if (matriz_alocar(&C, A.m, B.n) != 0) {
	test	eax, eax	# _18
	je	.L19	#,
# src/matmul.c:103:         matriz_liberar(&A);
	lea	rax, [rbp-96]	# tmp147,
	mov	rdi, rax	#, tmp147
	call	"matriz_liberar"	#
# src/matmul.c:104:         matriz_liberar(&B);
	lea	rax, [rbp-128]	# tmp148,
	mov	rdi, rax	#, tmp148
	call	"matriz_liberar"	#
# src/matmul.c:105:         return 1;
	mov	eax, 1	# _36,
	jmp	.L27	#
.L19:
# src/matmul.c:109:     const double t3 = obter_tempo_segundos();
	call	"obter_tempo_segundos"	#
	movq	rax, xmm0	# tmp149,
	mov	QWORD PTR [rbp-32], rax	# t3, tmp149
# src/matmul.c:110:     matmul_kernel(&A, &B, &C);
	lea	rdx, [rbp-160]	# tmp150,
	lea	rcx, [rbp-128]	# tmp151,
	lea	rax, [rbp-96]	# tmp152,
	mov	rsi, rcx	#, tmp151
	mov	rdi, rax	#, tmp152
	call	"matmul_kernel"	#
# src/matmul.c:111:     const double t4 = obter_tempo_segundos();
	call	"obter_tempo_segundos"	#
	movq	rax, xmm0	# tmp153,
	mov	QWORD PTR [rbp-40], rax	# t4, tmp153
# src/matmul.c:113:     if (bin_escrever_matriz(argv[3], &C) != 0) {
	mov	rax, QWORD PTR [rbp-176]	# tmp154, argv
	add	rax, 24	# _19,
# src/matmul.c:113:     if (bin_escrever_matriz(argv[3], &C) != 0) {
	mov	rax, QWORD PTR [rax]	# _20, *_19
	lea	rdx, [rbp-160]	# tmp155,
	mov	rsi, rdx	#, tmp155
	mov	rdi, rax	#, _20
	call	"bin_escrever_matriz"	#
# src/matmul.c:113:     if (bin_escrever_matriz(argv[3], &C) != 0) {
	test	eax, eax	# _21
	je	.L20	#,
# src/matmul.c:114:         matriz_liberar(&A);
	lea	rax, [rbp-96]	# tmp156,
	mov	rdi, rax	#, tmp156
	call	"matriz_liberar"	#
# src/matmul.c:115:         matriz_liberar(&B);
	lea	rax, [rbp-128]	# tmp157,
	mov	rdi, rax	#, tmp157
	call	"matriz_liberar"	#
# src/matmul.c:116:         matriz_liberar(&C);
	lea	rax, [rbp-160]	# tmp158,
	mov	rdi, rax	#, tmp158
	call	"matriz_liberar"	#
# src/matmul.c:117:         return 1;
	mov	eax, 1	# _36,
	jmp	.L27	#
.L20:
# src/matmul.c:119:     const double t5 = obter_tempo_segundos();
	call	"obter_tempo_segundos"	#
	movq	rax, xmm0	# tmp159,
	mov	QWORD PTR [rbp-48], rax	# t5, tmp159
# src/matmul.c:121:     const double tempo_io = (t1 - t0) + (t2 - t1) + (t5 - t4);
	movsd	xmm0, QWORD PTR [rbp-16]	# tmp160, t1
	movapd	xmm1, xmm0	# tmp160, tmp160
	subsd	xmm1, QWORD PTR [rbp-8]	# tmp160, t0
# src/matmul.c:121:     const double tempo_io = (t1 - t0) + (t2 - t1) + (t5 - t4);
	movsd	xmm0, QWORD PTR [rbp-24]	# tmp161, t2
	subsd	xmm0, QWORD PTR [rbp-16]	# _23, t1
# src/matmul.c:121:     const double tempo_io = (t1 - t0) + (t2 - t1) + (t5 - t4);
	addsd	xmm1, xmm0	# _24, _23
# src/matmul.c:121:     const double tempo_io = (t1 - t0) + (t2 - t1) + (t5 - t4);
	movsd	xmm0, QWORD PTR [rbp-48]	# tmp162, t5
	subsd	xmm0, QWORD PTR [rbp-40]	# _25, t4
# src/matmul.c:121:     const double tempo_io = (t1 - t0) + (t2 - t1) + (t5 - t4);
	addsd	xmm0, xmm1	# tempo_io_68, _24
	movsd	QWORD PTR [rbp-56], xmm0	# tempo_io, tempo_io_68
# src/matmul.c:122:     const double tempo_comp = t4 - t3;
	movsd	xmm0, QWORD PTR [rbp-40]	# tmp165, t4
	subsd	xmm0, QWORD PTR [rbp-32]	# tempo_comp_69, t3
	movsd	QWORD PTR [rbp-64], xmm0	# tempo_comp, tempo_comp_69
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	mov	rax, QWORD PTR [rbp-88]	# _26, A.m
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
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
	movapd	xmm1, xmm0	# _27, _27
	addsd	xmm1, xmm0	# _27, _27
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	mov	rax, QWORD PTR [rbp-80]	# _29, A.n
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
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
	mulsd	xmm1, xmm0	# _31, _30
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	mov	rax, QWORD PTR [rbp-112]	# _32, B.n
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
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
	mulsd	xmm0, xmm1	# _34, _31
# src/matmul.c:124:         2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
	movsd	xmm2, QWORD PTR [rbp-64]	# tmp175, tempo_comp
	movsd	xmm1, QWORD PTR .LC4[rip]	# tmp176,
	mulsd	xmm1, xmm2	# _35, tmp175
# src/matmul.c:123:     const double gflops =
	divsd	xmm0, xmm1	# gflops_70, _35
	movsd	QWORD PTR [rbp-72], xmm0	# gflops, gflops_70
# src/matmul.c:127:     printf("TEMPO_IO: %.6f | TEMPO_COMP: %.6f | GFLOPS: %.4f\n",
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
	lea	rax, [rbp-96]	# tmp181,
	mov	rdi, rax	#, tmp181
	call	"matriz_liberar"	#
# src/matmul.c:131:     matriz_liberar(&B);
	lea	rax, [rbp-128]	# tmp182,
	mov	rdi, rax	#, tmp182
	call	"matriz_liberar"	#
# src/matmul.c:132:     matriz_liberar(&C);
	lea	rax, [rbp-160]	# tmp183,
	mov	rdi, rax	#, tmp183
	call	"matriz_liberar"	#
# src/matmul.c:133:     return 0;
	mov	eax, 0	# _36,
.L27:
# src/matmul.c:134: }
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
	.ident	"GCC: (GNU) 16.2.1 20260819 (Red Hat 16.2.1-2)"
	.section	.note.GNU-stack,"",@progbits
