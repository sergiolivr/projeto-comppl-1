
build/base_g/matmul:     file format elf64-x86-64


Disassembly of section .init:

000000000040033c <_init>:
  40033c:	f3 0f 1e fa          	endbr64
  400340:	48 83 ec 08          	sub    rsp,0x8
  400344:	48 8b 05 95 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c95]        # 403fe0 <__gmon_start__>
  40034b:	48 85 c0             	test   rax,rax
  40034e:	74 02                	je     400352 <_init+0x16>
  400350:	ff d0                	call   rax
  400352:	48 83 c4 08          	add    rsp,0x8
  400356:	c3                   	ret

Disassembly of section .plt:

0000000000400360 <free@plt-0x10>:
  400360:	ff 35 8a 3c 00 00    	push   QWORD PTR [rip+0x3c8a]        # 403ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400366:	ff 25 8c 3c 00 00    	jmp    QWORD PTR [rip+0x3c8c]        # 403ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40036c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400370 <free@plt>:
  400370:	ff 25 8a 3c 00 00    	jmp    QWORD PTR [rip+0x3c8a]        # 404000 <free@GLIBC_2.2.5>
  400376:	68 00 00 00 00       	push   0x0
  40037b:	e9 e0 ff ff ff       	jmp    400360 <_init+0x24>

0000000000400380 <__errno_location@plt>:
  400380:	ff 25 82 3c 00 00    	jmp    QWORD PTR [rip+0x3c82]        # 404008 <__errno_location@GLIBC_2.2.5>
  400386:	68 01 00 00 00       	push   0x1
  40038b:	e9 d0 ff ff ff       	jmp    400360 <_init+0x24>

0000000000400390 <fread@plt>:
  400390:	ff 25 7a 3c 00 00    	jmp    QWORD PTR [rip+0x3c7a]        # 404010 <fread@GLIBC_2.2.5>
  400396:	68 02 00 00 00       	push   0x2
  40039b:	e9 c0 ff ff ff       	jmp    400360 <_init+0x24>

00000000004003a0 <clock_gettime@plt>:
  4003a0:	ff 25 72 3c 00 00    	jmp    QWORD PTR [rip+0x3c72]        # 404018 <clock_gettime@GLIBC_2.17>
  4003a6:	68 03 00 00 00       	push   0x3
  4003ab:	e9 b0 ff ff ff       	jmp    400360 <_init+0x24>

00000000004003b0 <fclose@plt>:
  4003b0:	ff 25 6a 3c 00 00    	jmp    QWORD PTR [rip+0x3c6a]        # 404020 <fclose@GLIBC_2.2.5>
  4003b6:	68 04 00 00 00       	push   0x4
  4003bb:	e9 a0 ff ff ff       	jmp    400360 <_init+0x24>

00000000004003c0 <printf@plt>:
  4003c0:	ff 25 62 3c 00 00    	jmp    QWORD PTR [rip+0x3c62]        # 404028 <printf@GLIBC_2.2.5>
  4003c6:	68 05 00 00 00       	push   0x5
  4003cb:	e9 90 ff ff ff       	jmp    400360 <_init+0x24>

00000000004003d0 <memset@plt>:
  4003d0:	ff 25 5a 3c 00 00    	jmp    QWORD PTR [rip+0x3c5a]        # 404030 <memset@GLIBC_2.2.5>
  4003d6:	68 06 00 00 00       	push   0x6
  4003db:	e9 80 ff ff ff       	jmp    400360 <_init+0x24>

00000000004003e0 <fprintf@plt>:
  4003e0:	ff 25 52 3c 00 00    	jmp    QWORD PTR [rip+0x3c52]        # 404038 <fprintf@GLIBC_2.2.5>
  4003e6:	68 07 00 00 00       	push   0x7
  4003eb:	e9 70 ff ff ff       	jmp    400360 <_init+0x24>

00000000004003f0 <fileno@plt>:
  4003f0:	ff 25 4a 3c 00 00    	jmp    QWORD PTR [rip+0x3c4a]        # 404040 <fileno@GLIBC_2.2.5>
  4003f6:	68 08 00 00 00       	push   0x8
  4003fb:	e9 60 ff ff ff       	jmp    400360 <_init+0x24>

0000000000400400 <setlocale@plt>:
  400400:	ff 25 42 3c 00 00    	jmp    QWORD PTR [rip+0x3c42]        # 404048 <setlocale@GLIBC_2.2.5>
  400406:	68 09 00 00 00       	push   0x9
  40040b:	e9 50 ff ff ff       	jmp    400360 <_init+0x24>

0000000000400410 <fopen@plt>:
  400410:	ff 25 3a 3c 00 00    	jmp    QWORD PTR [rip+0x3c3a]        # 404050 <fopen@GLIBC_2.2.5>
  400416:	68 0a 00 00 00       	push   0xa
  40041b:	e9 40 ff ff ff       	jmp    400360 <_init+0x24>

0000000000400420 <fwrite@plt>:
  400420:	ff 25 32 3c 00 00    	jmp    QWORD PTR [rip+0x3c32]        # 404058 <fwrite@GLIBC_2.2.5>
  400426:	68 0b 00 00 00       	push   0xb
  40042b:	e9 30 ff ff ff       	jmp    400360 <_init+0x24>

0000000000400430 <posix_memalign@plt>:
  400430:	ff 25 2a 3c 00 00    	jmp    QWORD PTR [rip+0x3c2a]        # 404060 <posix_memalign@GLIBC_2.2.5>
  400436:	68 0c 00 00 00       	push   0xc
  40043b:	e9 20 ff ff ff       	jmp    400360 <_init+0x24>

0000000000400440 <strerror@plt>:
  400440:	ff 25 22 3c 00 00    	jmp    QWORD PTR [rip+0x3c22]        # 404068 <strerror@GLIBC_2.2.5>
  400446:	68 0d 00 00 00       	push   0xd
  40044b:	e9 10 ff ff ff       	jmp    400360 <_init+0x24>

0000000000400450 <fstat@plt>:
  400450:	ff 25 1a 3c 00 00    	jmp    QWORD PTR [rip+0x3c1a]        # 404070 <fstat@GLIBC_2.33>
  400456:	68 0e 00 00 00       	push   0xe
  40045b:	e9 00 ff ff ff       	jmp    400360 <_init+0x24>

Disassembly of section .text:

0000000000400460 <_start>:
  400460:	f3 0f 1e fa          	endbr64
  400464:	31 ed                	xor    ebp,ebp
  400466:	49 89 d1             	mov    r9,rdx
  400469:	5e                   	pop    rsi
  40046a:	48 89 e2             	mov    rdx,rsp
  40046d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  400471:	50                   	push   rax
  400472:	54                   	push   rsp
  400473:	45 31 c0             	xor    r8d,r8d
  400476:	31 c9                	xor    ecx,ecx
  400478:	48 c7 c7 fd 07 40 00 	mov    rdi,0x4007fd
  40047f:	ff 15 53 3b 00 00    	call   QWORD PTR [rip+0x3b53]        # 403fd8 <__libc_start_main@GLIBC_2.34>
  400485:	f4                   	hlt
  400486:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40048d:	00 00 00 

0000000000400490 <_dl_relocate_static_pie>:
  400490:	f3 0f 1e fa          	endbr64
  400494:	c3                   	ret
  400495:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40049c:	00 00 00 
  40049f:	90                   	nop

00000000004004a0 <deregister_tm_clones>:
  4004a0:	b8 80 40 40 00       	mov    eax,0x404080
  4004a5:	48 3d 80 40 40 00    	cmp    rax,0x404080
  4004ab:	74 13                	je     4004c0 <deregister_tm_clones+0x20>
  4004ad:	b8 00 00 00 00       	mov    eax,0x0
  4004b2:	48 85 c0             	test   rax,rax
  4004b5:	74 09                	je     4004c0 <deregister_tm_clones+0x20>
  4004b7:	bf 80 40 40 00       	mov    edi,0x404080
  4004bc:	ff e0                	jmp    rax
  4004be:	66 90                	xchg   ax,ax
  4004c0:	c3                   	ret
  4004c1:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4004c5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4004cc:	00 00 00 00 

00000000004004d0 <register_tm_clones>:
  4004d0:	be 80 40 40 00       	mov    esi,0x404080
  4004d5:	48 81 ee 80 40 40 00 	sub    rsi,0x404080
  4004dc:	48 89 f0             	mov    rax,rsi
  4004df:	48 c1 ee 3f          	shr    rsi,0x3f
  4004e3:	48 c1 f8 03          	sar    rax,0x3
  4004e7:	48 01 c6             	add    rsi,rax
  4004ea:	48 d1 fe             	sar    rsi,1
  4004ed:	74 11                	je     400500 <register_tm_clones+0x30>
  4004ef:	b8 00 00 00 00       	mov    eax,0x0
  4004f4:	48 85 c0             	test   rax,rax
  4004f7:	74 07                	je     400500 <register_tm_clones+0x30>
  4004f9:	bf 80 40 40 00       	mov    edi,0x404080
  4004fe:	ff e0                	jmp    rax
  400500:	c3                   	ret
  400501:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400505:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40050c:	00 00 00 00 

0000000000400510 <__do_global_dtors_aux>:
  400510:	f3 0f 1e fa          	endbr64
  400514:	80 3d 6d 3b 00 00 00 	cmp    BYTE PTR [rip+0x3b6d],0x0        # 404088 <completed.0>
  40051b:	75 13                	jne    400530 <__do_global_dtors_aux+0x20>
  40051d:	55                   	push   rbp
  40051e:	48 89 e5             	mov    rbp,rsp
  400521:	e8 7a ff ff ff       	call   4004a0 <deregister_tm_clones>
  400526:	c6 05 5b 3b 00 00 01 	mov    BYTE PTR [rip+0x3b5b],0x1        # 404088 <completed.0>
  40052d:	5d                   	pop    rbp
  40052e:	c3                   	ret
  40052f:	90                   	nop
  400530:	c3                   	ret
  400531:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400535:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40053c:	00 00 00 00 

0000000000400540 <frame_dummy>:
  400540:	f3 0f 1e fa          	endbr64
  400544:	eb 8a                	jmp    4004d0 <register_tm_clones>

0000000000400546 <obter_tempo_segundos>:
 * Retorna o tempo monotônico em segundos (precisão de nanossegundos).
 *
 * É exatamente a função exigida no enunciado (seção 4.1.A): relógio
 * CLOCK_MONOTONIC, imune a ajustes de hora do sistema.
 */
static inline double obter_tempo_segundos(void) {
  400546:	55                   	push   rbp
  400547:	48 89 e5             	mov    rbp,rsp
  40054a:	48 83 ec 10          	sub    rsp,0x10
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
  40054e:	48 8d 45 f0          	lea    rax,[rbp-0x10]
  400552:	48 89 c6             	mov    rsi,rax
  400555:	bf 01 00 00 00       	mov    edi,0x1
  40055a:	e8 41 fe ff ff       	call   4003a0 <clock_gettime@plt>
    return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
  40055f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400563:	66 0f ef c9          	pxor   xmm1,xmm1
  400567:	f2 48 0f 2a c8       	cvtsi2sd xmm1,rax
  40056c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400570:	66 0f ef d2          	pxor   xmm2,xmm2
  400574:	f2 48 0f 2a d0       	cvtsi2sd xmm2,rax
  400579:	f2 0f 10 05 5f 20 00 	movsd  xmm0,QWORD PTR [rip+0x205f]        # 4025e0 <__dso_handle+0xc0>
  400580:	00 
  400581:	f2 0f 59 c2          	mulsd  xmm0,xmm2
  400585:	f2 0f 58 c1          	addsd  xmm0,xmm1
}
  400589:	c9                   	leave
  40058a:	c3                   	ret

000000000040058b <matmul_kernel>:
 * e a linha correspondente de B com passo 1, e não é uma redução — cada
 * C[i][j] acumula de forma independente —, o que o torna vetorizável pelo
 * GCC sem exigir reassociação de ponto flutuante (-ffast-math). O escalar
 * aik sai da memória uma única vez por (i, k) e alimenta N multiplicações.
 */
void matmul_kernel(const Matriz *A, const Matriz *B, Matriz *C) {
  40058b:	55                   	push   rbp
  40058c:	48 89 e5             	mov    rbp,rsp
  40058f:	48 81 ec b0 00 00 00 	sub    rsp,0xb0
  400596:	48 89 bd 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],rdi
  40059d:	48 89 b5 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],rsi
  4005a4:	48 89 95 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rdx
    const uint64_t M = A->m;
  4005ab:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
  4005b2:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  4005b6:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    const uint64_t K = A->n;
  4005ba:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
  4005c1:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  4005c5:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    const uint64_t N = B->n;
  4005c9:	48 8b 85 60 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa0]
  4005d0:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  4005d4:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax

    const float *restrict a = __builtin_assume_aligned(A->dados, MATRIZ_ALINHAMENTO);
  4005d8:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
  4005df:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4005e2:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
    const float *restrict b = __builtin_assume_aligned(B->dados, MATRIZ_ALINHAMENTO);
  4005e6:	48 8b 85 60 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa0]
  4005ed:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4005f0:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
    float       *restrict c = __builtin_assume_aligned(C->dados, MATRIZ_ALINHAMENTO);
  4005f4:	48 8b 85 58 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa8]
  4005fb:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4005fe:	48 89 45 b0          	mov    QWORD PTR [rbp-0x50],rax

    /* C é acumulador: a zeragem faz parte do algoritmo e fica dentro do
     * TEMPO_COMP (~0,2% do custo em 4000³; escolha conservadora). */
    memset(c, 0, (size_t)(M * N) * sizeof(float));
  400602:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  400606:	48 0f af 45 c8       	imul   rax,QWORD PTR [rbp-0x38]
  40060b:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400612:	00 
  400613:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
  400617:	be 00 00 00 00       	mov    esi,0x0
  40061c:	48 89 c7             	mov    rdi,rax
  40061f:	e8 ac fd ff ff       	call   4003d0 <memset@plt>

    for (uint64_t i = 0; i < M; i++) {
  400624:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
  40062b:	00 
  40062c:	e9 ba 01 00 00       	jmp    4007eb <matmul_kernel+0x260>
        const float *restrict ai = a + i * K;
  400631:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400635:	48 0f af 45 d0       	imul   rax,QWORD PTR [rbp-0x30]
  40063a:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400641:	00 
  400642:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
  400646:	48 01 d0             	add    rax,rdx
  400649:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
        float       *restrict ci = c + i * N;
  40064d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400651:	48 0f af 45 c8       	imul   rax,QWORD PTR [rbp-0x38]
  400656:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  40065d:	00 
  40065e:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
  400662:	48 01 d0             	add    rax,rdx
  400665:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax

        for (uint64_t k = 0; k < K; k++) {
  400669:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  400670:	00 
  400671:	e9 62 01 00 00       	jmp    4007d8 <matmul_kernel+0x24d>
            const float aik = ai[k];
  400676:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40067a:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400681:	00 
  400682:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  400686:	48 01 d0             	add    rax,rdx
  400689:	f3 0f 10 00          	movss  xmm0,DWORD PTR [rax]
  40068d:	f3 0f 11 45 9c       	movss  DWORD PTR [rbp-0x64],xmm0
            const float *restrict bk = b + k * N;
  400692:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400696:	48 0f af 45 c8       	imul   rax,QWORD PTR [rbp-0x38]
  40069b:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  4006a2:	00 
  4006a3:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  4006a7:	48 01 d0             	add    rax,rdx
  4006aa:	48 89 45 90          	mov    QWORD PTR [rbp-0x70],rax
             * dinâmico, o GCC não consegue provar o alinhamento de cada
             * linha de C; este peeling garante que o corpo principal use
             * cargas alinhadas (vmovaps) sem abrir mão da correção para
             * qualquer N (inclusive ímpar). */
            const size_t prologo =
                (size_t)((32u - ((uintptr_t)ci & 31u)) & 31u) / sizeof(float);
  4006ae:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  4006b2:	48 f7 d8             	neg    rax
  4006b5:	83 e0 1f             	and    eax,0x1f
            const size_t prologo =
  4006b8:	48 c1 e8 02          	shr    rax,0x2
  4006bc:	48 89 45 88          	mov    QWORD PTR [rbp-0x78],rax
            size_t j = 0;
  4006c0:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
  4006c7:	00 
            for (; j < prologo && j < N; j++) {
  4006c8:	eb 53                	jmp    40071d <matmul_kernel+0x192>
                ci[j] += aik * bk[j];
  4006ca:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4006ce:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  4006d5:	00 
  4006d6:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  4006da:	48 01 d0             	add    rax,rdx
  4006dd:	f3 0f 10 08          	movss  xmm1,DWORD PTR [rax]
  4006e1:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4006e5:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  4006ec:	00 
  4006ed:	48 8b 45 90          	mov    rax,QWORD PTR [rbp-0x70]
  4006f1:	48 01 d0             	add    rax,rdx
  4006f4:	f3 0f 10 00          	movss  xmm0,DWORD PTR [rax]
  4006f8:	f3 0f 59 45 9c       	mulss  xmm0,DWORD PTR [rbp-0x64]
  4006fd:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400701:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400708:	00 
  400709:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  40070d:	48 01 d0             	add    rax,rdx
  400710:	f3 0f 58 c1          	addss  xmm0,xmm1
  400714:	f3 0f 11 00          	movss  DWORD PTR [rax],xmm0
            for (; j < prologo && j < N; j++) {
  400718:	48 83 45 e8 01       	add    QWORD PTR [rbp-0x18],0x1
  40071d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400721:	48 3b 45 88          	cmp    rax,QWORD PTR [rbp-0x78]
  400725:	73 0a                	jae    400731 <matmul_kernel+0x1a6>
  400727:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40072b:	48 3b 45 c8          	cmp    rax,QWORD PTR [rbp-0x38]
  40072f:	72 99                	jb     4006ca <matmul_kernel+0x13f>
            }

            float       *restrict cj = __builtin_assume_aligned(ci + j, 32);
  400731:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400735:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  40073c:	00 
  40073d:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  400741:	48 01 d0             	add    rax,rdx
  400744:	48 89 45 80          	mov    QWORD PTR [rbp-0x80],rax
            const float *restrict bj = bk + j;
  400748:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40074c:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400753:	00 
  400754:	48 8b 45 90          	mov    rax,QWORD PTR [rbp-0x70]
  400758:	48 01 d0             	add    rax,rdx
  40075b:	48 89 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],rax
            for (uint64_t r = 0; j + r < N; r++) {
  400762:	48 c7 45 e0 00 00 00 	mov    QWORD PTR [rbp-0x20],0x0
  400769:	00 
  40076a:	eb 56                	jmp    4007c2 <matmul_kernel+0x237>
                cj[r] += aik * bj[r];
  40076c:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  400770:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400777:	00 
  400778:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
  40077c:	48 01 d0             	add    rax,rdx
  40077f:	f3 0f 10 08          	movss  xmm1,DWORD PTR [rax]
  400783:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  400787:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  40078e:	00 
  40078f:	48 8b 85 78 ff ff ff 	mov    rax,QWORD PTR [rbp-0x88]
  400796:	48 01 d0             	add    rax,rdx
  400799:	f3 0f 10 00          	movss  xmm0,DWORD PTR [rax]
  40079d:	f3 0f 59 45 9c       	mulss  xmm0,DWORD PTR [rbp-0x64]
  4007a2:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4007a6:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  4007ad:	00 
  4007ae:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
  4007b2:	48 01 d0             	add    rax,rdx
  4007b5:	f3 0f 58 c1          	addss  xmm0,xmm1
  4007b9:	f3 0f 11 00          	movss  DWORD PTR [rax],xmm0
            for (uint64_t r = 0; j + r < N; r++) {
  4007bd:	48 83 45 e0 01       	add    QWORD PTR [rbp-0x20],0x1
  4007c2:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  4007c6:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4007ca:	48 01 d0             	add    rax,rdx
  4007cd:	48 3b 45 c8          	cmp    rax,QWORD PTR [rbp-0x38]
  4007d1:	72 99                	jb     40076c <matmul_kernel+0x1e1>
        for (uint64_t k = 0; k < K; k++) {
  4007d3:	48 83 45 f0 01       	add    QWORD PTR [rbp-0x10],0x1
  4007d8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4007dc:	48 3b 45 d0          	cmp    rax,QWORD PTR [rbp-0x30]
  4007e0:	0f 82 90 fe ff ff    	jb     400676 <matmul_kernel+0xeb>
    for (uint64_t i = 0; i < M; i++) {
  4007e6:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
  4007eb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4007ef:	48 3b 45 d8          	cmp    rax,QWORD PTR [rbp-0x28]
  4007f3:	0f 82 38 fe ff ff    	jb     400631 <matmul_kernel+0xa6>
            }
        }
    }
}
  4007f9:	90                   	nop
  4007fa:	90                   	nop
  4007fb:	c9                   	leave
  4007fc:	c3                   	ret

00000000004007fd <main>:

int main(int argc, char **argv) {
  4007fd:	55                   	push   rbp
  4007fe:	48 89 e5             	mov    rbp,rsp
  400801:	48 81 ec b0 00 00 00 	sub    rsp,0xb0
  400808:	89 bd 5c ff ff ff    	mov    DWORD PTR [rbp-0xa4],edi
  40080e:	48 89 b5 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],rsi
    /* O locale da máquina é pt_BR.UTF-8 (vírgula decimal); fixar "C" garante
     * ponto decimal tanto no parse quanto na impressão dos tempos. */
    setlocale(LC_ALL, "C");
  400815:	be 28 25 40 00       	mov    esi,0x402528
  40081a:	bf 06 00 00 00       	mov    edi,0x6
  40081f:	e8 dc fb ff ff       	call   400400 <setlocale@plt>

    if (argc != 4) {
  400824:	83 bd 5c ff ff ff 04 	cmp    DWORD PTR [rbp-0xa4],0x4
  40082b:	74 2d                	je     40085a <main+0x5d>
        fprintf(stderr, "uso: %s <matrizA.bin> <matrizB.bin> <resultado.bin>\n", argv[0]);
  40082d:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
  400834:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  400837:	48 8b 05 42 38 00 00 	mov    rax,QWORD PTR [rip+0x3842]        # 404080 <stderr@GLIBC_2.2.5>
  40083e:	be 30 25 40 00       	mov    esi,0x402530
  400843:	48 89 c7             	mov    rdi,rax
  400846:	b8 00 00 00 00       	mov    eax,0x0
  40084b:	e8 90 fb ff ff       	call   4003e0 <fprintf@plt>
        return 2;
  400850:	b8 02 00 00 00       	mov    eax,0x2
  400855:	e9 59 03 00 00       	jmp    400bb3 <main+0x3b6>
    }

    Matriz A = { NULL, 0, 0 };
  40085a:	48 c7 45 a0 00 00 00 	mov    QWORD PTR [rbp-0x60],0x0
  400861:	00 
  400862:	48 c7 45 a8 00 00 00 	mov    QWORD PTR [rbp-0x58],0x0
  400869:	00 
  40086a:	48 c7 45 b0 00 00 00 	mov    QWORD PTR [rbp-0x50],0x0
  400871:	00 
    Matriz B = { NULL, 0, 0 };
  400872:	48 c7 45 80 00 00 00 	mov    QWORD PTR [rbp-0x80],0x0
  400879:	00 
  40087a:	48 c7 45 88 00 00 00 	mov    QWORD PTR [rbp-0x78],0x0
  400881:	00 
  400882:	48 c7 45 90 00 00 00 	mov    QWORD PTR [rbp-0x70],0x0
  400889:	00 
    Matriz C = { NULL, 0, 0 };
  40088a:	48 c7 85 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],0x0
  400891:	00 00 00 00 
  400895:	48 c7 85 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],0x0
  40089c:	00 00 00 00 
  4008a0:	48 c7 85 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],0x0
  4008a7:	00 00 00 00 

    /* TEMPO_IO = leitura de A + leitura de B + escrita de C (alocação fica fora). */
    const double t0 = obter_tempo_segundos();
  4008ab:	e8 96 fc ff ff       	call   400546 <obter_tempo_segundos>
  4008b0:	66 48 0f 7e c0       	movq   rax,xmm0
  4008b5:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    if (bin_ler_matriz(argv[1], &A) != 0) {
  4008b9:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
  4008c0:	48 83 c0 08          	add    rax,0x8
  4008c4:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4008c7:	48 8d 55 a0          	lea    rdx,[rbp-0x60]
  4008cb:	48 89 d6             	mov    rsi,rdx
  4008ce:	48 89 c7             	mov    rdi,rax
  4008d1:	e8 8e 04 00 00       	call   400d64 <bin_ler_matriz>
  4008d6:	85 c0                	test   eax,eax
  4008d8:	74 0a                	je     4008e4 <main+0xe7>
        return 1;
  4008da:	b8 01 00 00 00       	mov    eax,0x1
  4008df:	e9 cf 02 00 00       	jmp    400bb3 <main+0x3b6>
    }
    const double t1 = obter_tempo_segundos();
  4008e4:	e8 5d fc ff ff       	call   400546 <obter_tempo_segundos>
  4008e9:	66 48 0f 7e c0       	movq   rax,xmm0
  4008ee:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    if (bin_ler_matriz(argv[2], &B) != 0) {
  4008f2:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
  4008f9:	48 83 c0 10          	add    rax,0x10
  4008fd:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400900:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  400904:	48 89 d6             	mov    rsi,rdx
  400907:	48 89 c7             	mov    rdi,rax
  40090a:	e8 55 04 00 00       	call   400d64 <bin_ler_matriz>
  40090f:	85 c0                	test   eax,eax
  400911:	74 16                	je     400929 <main+0x12c>
        matriz_liberar(&A);
  400913:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  400917:	48 89 c7             	mov    rdi,rax
  40091a:	e8 04 04 00 00       	call   400d23 <matriz_liberar>
        return 1;
  40091f:	b8 01 00 00 00       	mov    eax,0x1
  400924:	e9 8a 02 00 00       	jmp    400bb3 <main+0x3b6>
    }
    const double t2 = obter_tempo_segundos();
  400929:	e8 18 fc ff ff       	call   400546 <obter_tempo_segundos>
  40092e:	66 48 0f 7e c0       	movq   rax,xmm0
  400933:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax

    if (A.n != B.m) {
  400937:	48 8b 55 b0          	mov    rdx,QWORD PTR [rbp-0x50]
  40093b:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
  40093f:	48 39 c2             	cmp    rdx,rax
  400942:	74 51                	je     400995 <main+0x198>
        fprintf(stderr, "matmul: dimensoes incompativeis: A %llux%llu, B %llux%llu\n",
                (unsigned long long)A.m, (unsigned long long)A.n,
                (unsigned long long)B.m, (unsigned long long)B.n);
  400944:	48 8b 7d 90          	mov    rdi,QWORD PTR [rbp-0x70]
  400948:	48 8b 75 88          	mov    rsi,QWORD PTR [rbp-0x78]
                (unsigned long long)A.m, (unsigned long long)A.n,
  40094c:	48 8b 4d b0          	mov    rcx,QWORD PTR [rbp-0x50]
  400950:	48 8b 55 a8          	mov    rdx,QWORD PTR [rbp-0x58]
        fprintf(stderr, "matmul: dimensoes incompativeis: A %llux%llu, B %llux%llu\n",
  400954:	48 8b 05 25 37 00 00 	mov    rax,QWORD PTR [rip+0x3725]        # 404080 <stderr@GLIBC_2.2.5>
  40095b:	49 89 f9             	mov    r9,rdi
  40095e:	49 89 f0             	mov    r8,rsi
  400961:	be 68 25 40 00       	mov    esi,0x402568
  400966:	48 89 c7             	mov    rdi,rax
  400969:	b8 00 00 00 00       	mov    eax,0x0
  40096e:	e8 6d fa ff ff       	call   4003e0 <fprintf@plt>
        matriz_liberar(&A);
  400973:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  400977:	48 89 c7             	mov    rdi,rax
  40097a:	e8 a4 03 00 00       	call   400d23 <matriz_liberar>
        matriz_liberar(&B);
  40097f:	48 8d 45 80          	lea    rax,[rbp-0x80]
  400983:	48 89 c7             	mov    rdi,rax
  400986:	e8 98 03 00 00       	call   400d23 <matriz_liberar>
        return 1;
  40098b:	b8 01 00 00 00       	mov    eax,0x1
  400990:	e9 1e 02 00 00       	jmp    400bb3 <main+0x3b6>
    }

    if (matriz_alocar(&C, A.m, B.n) != 0) {
  400995:	48 8b 55 90          	mov    rdx,QWORD PTR [rbp-0x70]
  400999:	48 8b 4d a8          	mov    rcx,QWORD PTR [rbp-0x58]
  40099d:	48 8d 85 60 ff ff ff 	lea    rax,[rbp-0xa0]
  4009a4:	48 89 ce             	mov    rsi,rcx
  4009a7:	48 89 c7             	mov    rdi,rax
  4009aa:	e8 70 02 00 00       	call   400c1f <matriz_alocar>
  4009af:	85 c0                	test   eax,eax
  4009b1:	74 22                	je     4009d5 <main+0x1d8>
        matriz_liberar(&A);
  4009b3:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  4009b7:	48 89 c7             	mov    rdi,rax
  4009ba:	e8 64 03 00 00       	call   400d23 <matriz_liberar>
        matriz_liberar(&B);
  4009bf:	48 8d 45 80          	lea    rax,[rbp-0x80]
  4009c3:	48 89 c7             	mov    rdi,rax
  4009c6:	e8 58 03 00 00       	call   400d23 <matriz_liberar>
        return 1;
  4009cb:	b8 01 00 00 00       	mov    eax,0x1
  4009d0:	e9 de 01 00 00       	jmp    400bb3 <main+0x3b6>
    }

    /* TEMPO_COMP = intervalo estrito do laço computacional. */
    const double t3 = obter_tempo_segundos();
  4009d5:	e8 6c fb ff ff       	call   400546 <obter_tempo_segundos>
  4009da:	66 48 0f 7e c0       	movq   rax,xmm0
  4009df:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    matmul_kernel(&A, &B, &C);
  4009e3:	48 8d 95 60 ff ff ff 	lea    rdx,[rbp-0xa0]
  4009ea:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  4009ee:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  4009f2:	48 89 ce             	mov    rsi,rcx
  4009f5:	48 89 c7             	mov    rdi,rax
  4009f8:	e8 8e fb ff ff       	call   40058b <matmul_kernel>
    const double t4 = obter_tempo_segundos();
  4009fd:	e8 44 fb ff ff       	call   400546 <obter_tempo_segundos>
  400a02:	66 48 0f 7e c0       	movq   rax,xmm0
  400a07:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax

    if (bin_escrever_matriz(argv[3], &C) != 0) {
  400a0b:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
  400a12:	48 83 c0 18          	add    rax,0x18
  400a16:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400a19:	48 8d 95 60 ff ff ff 	lea    rdx,[rbp-0xa0]
  400a20:	48 89 d6             	mov    rsi,rdx
  400a23:	48 89 c7             	mov    rdi,rax
  400a26:	e8 0d 06 00 00       	call   401038 <bin_escrever_matriz>
  400a2b:	85 c0                	test   eax,eax
  400a2d:	74 31                	je     400a60 <main+0x263>
        matriz_liberar(&A);
  400a2f:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  400a33:	48 89 c7             	mov    rdi,rax
  400a36:	e8 e8 02 00 00       	call   400d23 <matriz_liberar>
        matriz_liberar(&B);
  400a3b:	48 8d 45 80          	lea    rax,[rbp-0x80]
  400a3f:	48 89 c7             	mov    rdi,rax
  400a42:	e8 dc 02 00 00       	call   400d23 <matriz_liberar>
        matriz_liberar(&C);
  400a47:	48 8d 85 60 ff ff ff 	lea    rax,[rbp-0xa0]
  400a4e:	48 89 c7             	mov    rdi,rax
  400a51:	e8 cd 02 00 00       	call   400d23 <matriz_liberar>
        return 1;
  400a56:	b8 01 00 00 00       	mov    eax,0x1
  400a5b:	e9 53 01 00 00       	jmp    400bb3 <main+0x3b6>
    }
    const double t5 = obter_tempo_segundos();
  400a60:	e8 e1 fa ff ff       	call   400546 <obter_tempo_segundos>
  400a65:	66 48 0f 7e c0       	movq   rax,xmm0
  400a6a:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax

    const double tempo_io = (t1 - t0) + (t2 - t1) + (t5 - t4);
  400a6e:	f2 0f 10 45 f0       	movsd  xmm0,QWORD PTR [rbp-0x10]
  400a73:	66 0f 28 c8          	movapd xmm1,xmm0
  400a77:	f2 0f 5c 4d f8       	subsd  xmm1,QWORD PTR [rbp-0x8]
  400a7c:	f2 0f 10 45 e8       	movsd  xmm0,QWORD PTR [rbp-0x18]
  400a81:	f2 0f 5c 45 f0       	subsd  xmm0,QWORD PTR [rbp-0x10]
  400a86:	f2 0f 58 c8          	addsd  xmm1,xmm0
  400a8a:	f2 0f 10 45 d0       	movsd  xmm0,QWORD PTR [rbp-0x30]
  400a8f:	f2 0f 5c 45 d8       	subsd  xmm0,QWORD PTR [rbp-0x28]
  400a94:	f2 0f 58 c1          	addsd  xmm0,xmm1
  400a98:	f2 0f 11 45 c8       	movsd  QWORD PTR [rbp-0x38],xmm0
    const double tempo_comp = t4 - t3;
  400a9d:	f2 0f 10 45 d8       	movsd  xmm0,QWORD PTR [rbp-0x28]
  400aa2:	f2 0f 5c 45 e0       	subsd  xmm0,QWORD PTR [rbp-0x20]
  400aa7:	f2 0f 11 45 c0       	movsd  QWORD PTR [rbp-0x40],xmm0
    const double gflops =
        2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);
  400aac:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  400ab0:	48 85 c0             	test   rax,rax
  400ab3:	78 0b                	js     400ac0 <main+0x2c3>
  400ab5:	66 0f ef c0          	pxor   xmm0,xmm0
  400ab9:	f2 48 0f 2a c0       	cvtsi2sd xmm0,rax
  400abe:	eb 19                	jmp    400ad9 <main+0x2dc>
  400ac0:	48 89 c2             	mov    rdx,rax
  400ac3:	48 d1 ea             	shr    rdx,1
  400ac6:	83 e0 01             	and    eax,0x1
  400ac9:	48 09 c2             	or     rdx,rax
  400acc:	66 0f ef c0          	pxor   xmm0,xmm0
  400ad0:	f2 48 0f 2a c2       	cvtsi2sd xmm0,rdx
  400ad5:	f2 0f 58 c0          	addsd  xmm0,xmm0
  400ad9:	66 0f 28 c8          	movapd xmm1,xmm0
  400add:	f2 0f 58 c8          	addsd  xmm1,xmm0
  400ae1:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
  400ae5:	48 85 c0             	test   rax,rax
  400ae8:	78 0b                	js     400af5 <main+0x2f8>
  400aea:	66 0f ef c0          	pxor   xmm0,xmm0
  400aee:	f2 48 0f 2a c0       	cvtsi2sd xmm0,rax
  400af3:	eb 19                	jmp    400b0e <main+0x311>
  400af5:	48 89 c2             	mov    rdx,rax
  400af8:	48 d1 ea             	shr    rdx,1
  400afb:	83 e0 01             	and    eax,0x1
  400afe:	48 09 c2             	or     rdx,rax
  400b01:	66 0f ef c0          	pxor   xmm0,xmm0
  400b05:	f2 48 0f 2a c2       	cvtsi2sd xmm0,rdx
  400b0a:	f2 0f 58 c0          	addsd  xmm0,xmm0
  400b0e:	f2 0f 59 c8          	mulsd  xmm1,xmm0
  400b12:	48 8b 45 90          	mov    rax,QWORD PTR [rbp-0x70]
  400b16:	48 85 c0             	test   rax,rax
  400b19:	78 0b                	js     400b26 <main+0x329>
  400b1b:	66 0f ef c0          	pxor   xmm0,xmm0
  400b1f:	f2 48 0f 2a c0       	cvtsi2sd xmm0,rax
  400b24:	eb 19                	jmp    400b3f <main+0x342>
  400b26:	48 89 c2             	mov    rdx,rax
  400b29:	48 d1 ea             	shr    rdx,1
  400b2c:	83 e0 01             	and    eax,0x1
  400b2f:	48 09 c2             	or     rdx,rax
  400b32:	66 0f ef c0          	pxor   xmm0,xmm0
  400b36:	f2 48 0f 2a c2       	cvtsi2sd xmm0,rdx
  400b3b:	f2 0f 58 c0          	addsd  xmm0,xmm0
  400b3f:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  400b43:	f2 0f 10 55 c0       	movsd  xmm2,QWORD PTR [rbp-0x40]
  400b48:	f2 0f 10 0d 98 1a 00 	movsd  xmm1,QWORD PTR [rip+0x1a98]        # 4025e8 <__dso_handle+0xc8>
  400b4f:	00 
  400b50:	f2 0f 59 ca          	mulsd  xmm1,xmm2
    const double gflops =
  400b54:	f2 0f 5e c1          	divsd  xmm0,xmm1
  400b58:	f2 0f 11 45 b8       	movsd  QWORD PTR [rbp-0x48],xmm0

    /* Saída padronizada: exatamente uma linha, nada decorativo. */
    printf("TEMPO_IO: %.6f | TEMPO_COMP: %.6f | GFLOPS: %.4f\n",
  400b5d:	f2 0f 10 4d b8       	movsd  xmm1,QWORD PTR [rbp-0x48]
  400b62:	f2 0f 10 45 c0       	movsd  xmm0,QWORD PTR [rbp-0x40]
  400b67:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  400b6b:	66 0f 28 d1          	movapd xmm2,xmm1
  400b6f:	66 0f 28 c8          	movapd xmm1,xmm0
  400b73:	66 48 0f 6e c0       	movq   xmm0,rax
  400b78:	bf a8 25 40 00       	mov    edi,0x4025a8
  400b7d:	b8 03 00 00 00       	mov    eax,0x3
  400b82:	e8 39 f8 ff ff       	call   4003c0 <printf@plt>
           tempo_io, tempo_comp, gflops);

    matriz_liberar(&A);
  400b87:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  400b8b:	48 89 c7             	mov    rdi,rax
  400b8e:	e8 90 01 00 00       	call   400d23 <matriz_liberar>
    matriz_liberar(&B);
  400b93:	48 8d 45 80          	lea    rax,[rbp-0x80]
  400b97:	48 89 c7             	mov    rdi,rax
  400b9a:	e8 84 01 00 00       	call   400d23 <matriz_liberar>
    matriz_liberar(&C);
  400b9f:	48 8d 85 60 ff ff ff 	lea    rax,[rbp-0xa0]
  400ba6:	48 89 c7             	mov    rdi,rax
  400ba9:	e8 75 01 00 00       	call   400d23 <matriz_liberar>
    return 0;
  400bae:	b8 00 00 00 00       	mov    eax,0x0
}
  400bb3:	c9                   	leave
  400bb4:	c3                   	ret

0000000000400bb5 <matriz_dimensoes_validas>:
#include "matriz.h"

#include <stdio.h>
#include <stdlib.h>

int matriz_dimensoes_validas(uint64_t m, uint64_t n) {
  400bb5:	55                   	push   rbp
  400bb6:	48 89 e5             	mov    rbp,rsp
  400bb9:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  400bbd:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
    if (m == 0 || n == 0) {
  400bc1:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
  400bc6:	74 07                	je     400bcf <matriz_dimensoes_validas+0x1a>
  400bc8:	48 83 7d e0 00       	cmp    QWORD PTR [rbp-0x20],0x0
  400bcd:	75 07                	jne    400bd6 <matriz_dimensoes_validas+0x21>
        return 0;
  400bcf:	b8 00 00 00 00       	mov    eax,0x0
  400bd4:	eb 25                	jmp    400bfb <matriz_dimensoes_validas+0x46>
    }
    /* m*n <= SIZE_MAX/sizeof(float), sem overflow: equivale a m*n*4 <= SIZE_MAX. */
    const uint64_t limite = (uint64_t)(SIZE_MAX / sizeof(float));
  400bd6:	48 b8 ff ff ff ff ff 	movabs rax,0x3fffffffffffffff
  400bdd:	ff ff 3f 
  400be0:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    return m <= limite / n;
  400be4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400be8:	ba 00 00 00 00       	mov    edx,0x0
  400bed:	48 f7 75 e0          	div    QWORD PTR [rbp-0x20]
  400bf1:	48 3b 45 e8          	cmp    rax,QWORD PTR [rbp-0x18]
  400bf5:	0f 93 c0             	setae  al
  400bf8:	0f b6 c0             	movzx  eax,al
}
  400bfb:	5d                   	pop    rbp
  400bfc:	c3                   	ret

0000000000400bfd <matriz_bytes_payload>:

size_t matriz_bytes_payload(const Matriz *mat) {
  400bfd:	55                   	push   rbp
  400bfe:	48 89 e5             	mov    rbp,rsp
  400c01:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    return (size_t)(mat->m * mat->n) * sizeof(float);
  400c05:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400c09:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  400c0d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400c11:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  400c15:	48 0f af c2          	imul   rax,rdx
  400c19:	48 c1 e0 02          	shl    rax,0x2
}
  400c1d:	5d                   	pop    rbp
  400c1e:	c3                   	ret

0000000000400c1f <matriz_alocar>:

int matriz_alocar(Matriz *mat, uint64_t m, uint64_t n) {
  400c1f:	55                   	push   rbp
  400c20:	48 89 e5             	mov    rbp,rsp
  400c23:	48 83 ec 30          	sub    rsp,0x30
  400c27:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  400c2b:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  400c2f:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
    mat->dados = NULL;
  400c33:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400c37:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    mat->m = 0;
  400c3e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400c42:	48 c7 40 08 00 00 00 	mov    QWORD PTR [rax+0x8],0x0
  400c49:	00 
    mat->n = 0;
  400c4a:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400c4e:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
  400c55:	00 

    if (!matriz_dimensoes_validas(m, n)) {
  400c56:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  400c5a:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  400c5e:	48 89 d6             	mov    rsi,rdx
  400c61:	48 89 c7             	mov    rdi,rax
  400c64:	e8 4c ff ff ff       	call   400bb5 <matriz_dimensoes_validas>
  400c69:	85 c0                	test   eax,eax
  400c6b:	75 2b                	jne    400c98 <matriz_alocar+0x79>
        fprintf(stderr, "matriz: dimensoes invalidas (%llu x %llu)\n",
  400c6d:	48 8b 05 0c 34 00 00 	mov    rax,QWORD PTR [rip+0x340c]        # 404080 <stderr@GLIBC_2.2.5>
  400c74:	48 8b 4d d8          	mov    rcx,QWORD PTR [rbp-0x28]
  400c78:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  400c7c:	be f0 25 40 00       	mov    esi,0x4025f0
  400c81:	48 89 c7             	mov    rdi,rax
  400c84:	b8 00 00 00 00       	mov    eax,0x0
  400c89:	e8 52 f7 ff ff       	call   4003e0 <fprintf@plt>
                (unsigned long long)m, (unsigned long long)n);
        return -1;
  400c8e:	b8 ff ff ff ff       	mov    eax,0xffffffff
  400c93:	e9 89 00 00 00       	jmp    400d21 <matriz_alocar+0x102>
    }

    const size_t bytes = (size_t)(m * n) * sizeof(float);
  400c98:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  400c9c:	48 0f af 45 d8       	imul   rax,QWORD PTR [rbp-0x28]
  400ca1:	48 c1 e0 02          	shl    rax,0x2
  400ca5:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    void *p = NULL;
  400ca9:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  400cb0:	00 
    if (posix_memalign(&p, MATRIZ_ALINHAMENTO, bytes) != 0) {
  400cb1:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  400cb5:	48 8d 45 f0          	lea    rax,[rbp-0x10]
  400cb9:	be 40 00 00 00       	mov    esi,0x40
  400cbe:	48 89 c7             	mov    rdi,rax
  400cc1:	e8 6a f7 ff ff       	call   400430 <posix_memalign@plt>
  400cc6:	85 c0                	test   eax,eax
  400cc8:	74 2f                	je     400cf9 <matriz_alocar+0xda>
        fprintf(stderr, "matriz: falha ao alocar %zu bytes (%llu x %llu)\n",
  400cca:	48 8b 05 af 33 00 00 	mov    rax,QWORD PTR [rip+0x33af]        # 404080 <stderr@GLIBC_2.2.5>
  400cd1:	48 8b 75 d8          	mov    rsi,QWORD PTR [rbp-0x28]
  400cd5:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
  400cd9:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  400cdd:	49 89 f0             	mov    r8,rsi
  400ce0:	be 20 26 40 00       	mov    esi,0x402620
  400ce5:	48 89 c7             	mov    rdi,rax
  400ce8:	b8 00 00 00 00       	mov    eax,0x0
  400ced:	e8 ee f6 ff ff       	call   4003e0 <fprintf@plt>
                bytes, (unsigned long long)m, (unsigned long long)n);
        return -1;
  400cf2:	b8 ff ff ff ff       	mov    eax,0xffffffff
  400cf7:	eb 28                	jmp    400d21 <matriz_alocar+0x102>
    }

    mat->dados = (float *)p;
  400cf9:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  400cfd:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400d01:	48 89 10             	mov    QWORD PTR [rax],rdx
    mat->m = m;
  400d04:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400d08:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  400d0c:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
    mat->n = n;
  400d10:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400d14:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  400d18:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
    return 0;
  400d1c:	b8 00 00 00 00       	mov    eax,0x0
}
  400d21:	c9                   	leave
  400d22:	c3                   	ret

0000000000400d23 <matriz_liberar>:

void matriz_liberar(Matriz *mat) {
  400d23:	55                   	push   rbp
  400d24:	48 89 e5             	mov    rbp,rsp
  400d27:	48 83 ec 10          	sub    rsp,0x10
  400d2b:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    free(mat->dados);
  400d2f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400d33:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400d36:	48 89 c7             	mov    rdi,rax
  400d39:	e8 32 f6 ff ff       	call   400370 <free@plt>
    mat->dados = NULL;
  400d3e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400d42:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    mat->m = 0;
  400d49:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400d4d:	48 c7 40 08 00 00 00 	mov    QWORD PTR [rax+0x8],0x0
  400d54:	00 
    mat->n = 0;
  400d55:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400d59:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
  400d60:	00 
}
  400d61:	90                   	nop
  400d62:	c9                   	leave
  400d63:	c3                   	ret

0000000000400d64 <bin_ler_matriz>:
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/stat.h>

int bin_ler_matriz(const char *caminho, Matriz *saida) {
  400d64:	55                   	push   rbp
  400d65:	48 89 e5             	mov    rbp,rsp
  400d68:	48 81 ec e0 00 00 00 	sub    rsp,0xe0
  400d6f:	48 89 bd 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rdi
  400d76:	48 89 b5 20 ff ff ff 	mov    QWORD PTR [rbp-0xe0],rsi
    FILE *f = fopen(caminho, "rb");
  400d7d:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  400d84:	be 58 26 40 00       	mov    esi,0x402658
  400d89:	48 89 c7             	mov    rdi,rax
  400d8c:	e8 7f f6 ff ff       	call   400410 <fopen@plt>
  400d91:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    if (f == NULL) {
  400d95:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  400d9a:	75 3b                	jne    400dd7 <bin_ler_matriz+0x73>
        fprintf(stderr, "bin: nao foi possivel abrir '%s': %s\n", caminho, strerror(errno));
  400d9c:	e8 df f5 ff ff       	call   400380 <__errno_location@plt>
  400da1:	8b 00                	mov    eax,DWORD PTR [rax]
  400da3:	89 c7                	mov    edi,eax
  400da5:	e8 96 f6 ff ff       	call   400440 <strerror@plt>
  400daa:	48 89 c1             	mov    rcx,rax
  400dad:	48 8b 05 cc 32 00 00 	mov    rax,QWORD PTR [rip+0x32cc]        # 404080 <stderr@GLIBC_2.2.5>
  400db4:	48 8b 95 28 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xd8]
  400dbb:	be 60 26 40 00       	mov    esi,0x402660
  400dc0:	48 89 c7             	mov    rdi,rax
  400dc3:	b8 00 00 00 00       	mov    eax,0x0
  400dc8:	e8 13 f6 ff ff       	call   4003e0 <fprintf@plt>
        return -1;
  400dcd:	b8 ff ff ff ff       	mov    eax,0xffffffff
  400dd2:	e9 5f 02 00 00       	jmp    401036 <bin_ler_matriz+0x2d2>
    }

    uint64_t cabecalho[2];
    if (fread(cabecalho, sizeof(uint64_t), 2, f) != 2) {
  400dd7:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  400ddb:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  400ddf:	48 89 d1             	mov    rcx,rdx
  400de2:	ba 02 00 00 00       	mov    edx,0x2
  400de7:	be 08 00 00 00       	mov    esi,0x8
  400dec:	48 89 c7             	mov    rdi,rax
  400def:	e8 9c f5 ff ff       	call   400390 <fread@plt>
  400df4:	48 83 f8 02          	cmp    rax,0x2
  400df8:	74 36                	je     400e30 <bin_ler_matriz+0xcc>
        fprintf(stderr, "bin: '%s' truncado no cabecalho (esperados 16 bytes)\n", caminho);
  400dfa:	48 8b 05 7f 32 00 00 	mov    rax,QWORD PTR [rip+0x327f]        # 404080 <stderr@GLIBC_2.2.5>
  400e01:	48 8b 95 28 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xd8]
  400e08:	be 88 26 40 00       	mov    esi,0x402688
  400e0d:	48 89 c7             	mov    rdi,rax
  400e10:	b8 00 00 00 00       	mov    eax,0x0
  400e15:	e8 c6 f5 ff ff       	call   4003e0 <fprintf@plt>
        fclose(f);
  400e1a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400e1e:	48 89 c7             	mov    rdi,rax
  400e21:	e8 8a f5 ff ff       	call   4003b0 <fclose@plt>
        return -1;
  400e26:	b8 ff ff ff ff       	mov    eax,0xffffffff
  400e2b:	e9 06 02 00 00       	jmp    401036 <bin_ler_matriz+0x2d2>
    }
    const uint64_t m = cabecalho[0];
  400e30:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
  400e34:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    const uint64_t n = cabecalho[1];
  400e38:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  400e3c:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax

    if (!matriz_dimensoes_validas(m, n)) {
  400e40:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  400e44:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400e48:	48 89 d6             	mov    rsi,rdx
  400e4b:	48 89 c7             	mov    rdi,rax
  400e4e:	e8 62 fd ff ff       	call   400bb5 <matriz_dimensoes_validas>
  400e53:	85 c0                	test   eax,eax
  400e55:	75 41                	jne    400e98 <bin_ler_matriz+0x134>
        fprintf(stderr, "bin: '%s' com dimensoes invalidas (%llu x %llu)\n",
  400e57:	48 8b 05 22 32 00 00 	mov    rax,QWORD PTR [rip+0x3222]        # 404080 <stderr@GLIBC_2.2.5>
  400e5e:	48 8b 75 e8          	mov    rsi,QWORD PTR [rbp-0x18]
  400e62:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  400e66:	48 8b 95 28 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xd8]
  400e6d:	49 89 f0             	mov    r8,rsi
  400e70:	be c0 26 40 00       	mov    esi,0x4026c0
  400e75:	48 89 c7             	mov    rdi,rax
  400e78:	b8 00 00 00 00       	mov    eax,0x0
  400e7d:	e8 5e f5 ff ff       	call   4003e0 <fprintf@plt>
                caminho, (unsigned long long)m, (unsigned long long)n);
        fclose(f);
  400e82:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400e86:	48 89 c7             	mov    rdi,rax
  400e89:	e8 22 f5 ff ff       	call   4003b0 <fclose@plt>
        return -1;
  400e8e:	b8 ff ff ff ff       	mov    eax,0xffffffff
  400e93:	e9 9e 01 00 00       	jmp    401036 <bin_ler_matriz+0x2d2>
    }

    /* Valida o tamanho real do arquivo antes de alocar: pega cabeçalho
     * corrompido e arquivo truncado sem tentar reservar memória absurda. */
    struct stat st;
    if (fstat(fileno(f), &st) != 0) {
  400e98:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400e9c:	48 89 c7             	mov    rdi,rax
  400e9f:	e8 4c f5 ff ff       	call   4003f0 <fileno@plt>
  400ea4:	89 c2                	mov    edx,eax
  400ea6:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
  400ead:	48 89 c6             	mov    rsi,rax
  400eb0:	89 d7                	mov    edi,edx
  400eb2:	e8 99 f5 ff ff       	call   400450 <fstat@plt>
  400eb7:	85 c0                	test   eax,eax
  400eb9:	74 47                	je     400f02 <bin_ler_matriz+0x19e>
        fprintf(stderr, "bin: falha em fstat('%s'): %s\n", caminho, strerror(errno));
  400ebb:	e8 c0 f4 ff ff       	call   400380 <__errno_location@plt>
  400ec0:	8b 00                	mov    eax,DWORD PTR [rax]
  400ec2:	89 c7                	mov    edi,eax
  400ec4:	e8 77 f5 ff ff       	call   400440 <strerror@plt>
  400ec9:	48 89 c1             	mov    rcx,rax
  400ecc:	48 8b 05 ad 31 00 00 	mov    rax,QWORD PTR [rip+0x31ad]        # 404080 <stderr@GLIBC_2.2.5>
  400ed3:	48 8b 95 28 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xd8]
  400eda:	be f8 26 40 00       	mov    esi,0x4026f8
  400edf:	48 89 c7             	mov    rdi,rax
  400ee2:	b8 00 00 00 00       	mov    eax,0x0
  400ee7:	e8 f4 f4 ff ff       	call   4003e0 <fprintf@plt>
        fclose(f);
  400eec:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400ef0:	48 89 c7             	mov    rdi,rax
  400ef3:	e8 b8 f4 ff ff       	call   4003b0 <fclose@plt>
        return -1;
  400ef8:	b8 ff ff ff ff       	mov    eax,0xffffffff
  400efd:	e9 34 01 00 00       	jmp    401036 <bin_ler_matriz+0x2d2>
    }
    const uint64_t esperado = 16u + m * n * 4u;
  400f02:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400f06:	48 0f af 45 e8       	imul   rax,QWORD PTR [rbp-0x18]
  400f0b:	48 83 c0 04          	add    rax,0x4
  400f0f:	48 c1 e0 02          	shl    rax,0x2
  400f13:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    if ((uint64_t)st.st_size != esperado) {
  400f17:	48 8b 95 60 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xa0]
  400f1e:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  400f22:	48 39 c2             	cmp    rdx,rax
  400f25:	74 56                	je     400f7d <bin_ler_matriz+0x219>
        fprintf(stderr, "bin: '%s' tem %lld bytes; esperado %llu (%llu x %llu)\n",
                caminho, (long long)st.st_size, (unsigned long long)esperado,
  400f27:	48 8b 8d 60 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xa0]
        fprintf(stderr, "bin: '%s' tem %lld bytes; esperado %llu (%llu x %llu)\n",
  400f2e:	48 8b 05 4b 31 00 00 	mov    rax,QWORD PTR [rip+0x314b]        # 404080 <stderr@GLIBC_2.2.5>
  400f35:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  400f39:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  400f3d:	48 8b 95 28 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xd8]
  400f44:	48 83 ec 08          	sub    rsp,0x8
  400f48:	ff 75 e8             	push   QWORD PTR [rbp-0x18]
  400f4b:	49 89 f9             	mov    r9,rdi
  400f4e:	49 89 f0             	mov    r8,rsi
  400f51:	be 18 27 40 00       	mov    esi,0x402718
  400f56:	48 89 c7             	mov    rdi,rax
  400f59:	b8 00 00 00 00       	mov    eax,0x0
  400f5e:	e8 7d f4 ff ff       	call   4003e0 <fprintf@plt>
  400f63:	48 83 c4 10          	add    rsp,0x10
                (unsigned long long)m, (unsigned long long)n);
        fclose(f);
  400f67:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400f6b:	48 89 c7             	mov    rdi,rax
  400f6e:	e8 3d f4 ff ff       	call   4003b0 <fclose@plt>
        return -1;
  400f73:	b8 ff ff ff ff       	mov    eax,0xffffffff
  400f78:	e9 b9 00 00 00       	jmp    401036 <bin_ler_matriz+0x2d2>
    }

    if (matriz_alocar(saida, m, n) != 0) {
  400f7d:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  400f81:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  400f85:	48 8b 85 20 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe0]
  400f8c:	48 89 ce             	mov    rsi,rcx
  400f8f:	48 89 c7             	mov    rdi,rax
  400f92:	e8 88 fc ff ff       	call   400c1f <matriz_alocar>
  400f97:	85 c0                	test   eax,eax
  400f99:	74 16                	je     400fb1 <bin_ler_matriz+0x24d>
        fclose(f);
  400f9b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400f9f:	48 89 c7             	mov    rdi,rax
  400fa2:	e8 09 f4 ff ff       	call   4003b0 <fclose@plt>
        return -1;
  400fa7:	b8 ff ff ff ff       	mov    eax,0xffffffff
  400fac:	e9 85 00 00 00       	jmp    401036 <bin_ler_matriz+0x2d2>
    }

    const size_t total = (size_t)(m * n);
  400fb1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400fb5:	48 0f af 45 e8       	imul   rax,QWORD PTR [rbp-0x18]
  400fba:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    if (fread(saida->dados, sizeof(float), total, f) != total) {
  400fbe:	48 8b 85 20 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe0]
  400fc5:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400fc8:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  400fcc:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  400fd0:	be 04 00 00 00       	mov    esi,0x4
  400fd5:	48 89 c7             	mov    rdi,rax
  400fd8:	e8 b3 f3 ff ff       	call   400390 <fread@plt>
  400fdd:	48 39 45 d8          	cmp    QWORD PTR [rbp-0x28],rax
  400fe1:	74 42                	je     401025 <bin_ler_matriz+0x2c1>
        fprintf(stderr, "bin: falha ao ler o payload de '%s'\n", caminho);
  400fe3:	48 8b 05 96 30 00 00 	mov    rax,QWORD PTR [rip+0x3096]        # 404080 <stderr@GLIBC_2.2.5>
  400fea:	48 8b 95 28 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xd8]
  400ff1:	be 50 27 40 00       	mov    esi,0x402750
  400ff6:	48 89 c7             	mov    rdi,rax
  400ff9:	b8 00 00 00 00       	mov    eax,0x0
  400ffe:	e8 dd f3 ff ff       	call   4003e0 <fprintf@plt>
        matriz_liberar(saida);
  401003:	48 8b 85 20 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe0]
  40100a:	48 89 c7             	mov    rdi,rax
  40100d:	e8 11 fd ff ff       	call   400d23 <matriz_liberar>
        fclose(f);
  401012:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401016:	48 89 c7             	mov    rdi,rax
  401019:	e8 92 f3 ff ff       	call   4003b0 <fclose@plt>
        return -1;
  40101e:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401023:	eb 11                	jmp    401036 <bin_ler_matriz+0x2d2>
    }

    fclose(f);
  401025:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401029:	48 89 c7             	mov    rdi,rax
  40102c:	e8 7f f3 ff ff       	call   4003b0 <fclose@plt>
    return 0;
  401031:	b8 00 00 00 00       	mov    eax,0x0
}
  401036:	c9                   	leave
  401037:	c3                   	ret

0000000000401038 <bin_escrever_matriz>:

int bin_escrever_matriz(const char *caminho, const Matriz *mat) {
  401038:	55                   	push   rbp
  401039:	48 89 e5             	mov    rbp,rsp
  40103c:	48 83 ec 30          	sub    rsp,0x30
  401040:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  401044:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
    FILE *f = fopen(caminho, "wb");
  401048:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  40104c:	be 75 27 40 00       	mov    esi,0x402775
  401051:	48 89 c7             	mov    rdi,rax
  401054:	e8 b7 f3 ff ff       	call   400410 <fopen@plt>
  401059:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    if (f == NULL) {
  40105d:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  401062:	75 38                	jne    40109c <bin_escrever_matriz+0x64>
        fprintf(stderr, "bin: nao foi possivel criar '%s': %s\n", caminho, strerror(errno));
  401064:	e8 17 f3 ff ff       	call   400380 <__errno_location@plt>
  401069:	8b 00                	mov    eax,DWORD PTR [rax]
  40106b:	89 c7                	mov    edi,eax
  40106d:	e8 ce f3 ff ff       	call   400440 <strerror@plt>
  401072:	48 89 c1             	mov    rcx,rax
  401075:	48 8b 05 04 30 00 00 	mov    rax,QWORD PTR [rip+0x3004]        # 404080 <stderr@GLIBC_2.2.5>
  40107c:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  401080:	be 78 27 40 00       	mov    esi,0x402778
  401085:	48 89 c7             	mov    rdi,rax
  401088:	b8 00 00 00 00       	mov    eax,0x0
  40108d:	e8 4e f3 ff ff       	call   4003e0 <fprintf@plt>
        return -1;
  401092:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401097:	e9 22 01 00 00       	jmp    4011be <bin_escrever_matriz+0x186>
    }

    const uint64_t cabecalho[2] = { mat->m, mat->n };
  40109c:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  4010a0:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  4010a4:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  4010a8:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  4010ac:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  4010b0:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    if (fwrite(cabecalho, sizeof(uint64_t), 2, f) != 2) {
  4010b4:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  4010b8:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  4010bc:	48 89 d1             	mov    rcx,rdx
  4010bf:	ba 02 00 00 00       	mov    edx,0x2
  4010c4:	be 08 00 00 00       	mov    esi,0x8
  4010c9:	48 89 c7             	mov    rdi,rax
  4010cc:	e8 4f f3 ff ff       	call   400420 <fwrite@plt>
  4010d1:	48 83 f8 02          	cmp    rax,0x2
  4010d5:	74 33                	je     40110a <bin_escrever_matriz+0xd2>
        fprintf(stderr, "bin: falha ao escrever o cabecalho de '%s'\n", caminho);
  4010d7:	48 8b 05 a2 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fa2]        # 404080 <stderr@GLIBC_2.2.5>
  4010de:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  4010e2:	be a0 27 40 00       	mov    esi,0x4027a0
  4010e7:	48 89 c7             	mov    rdi,rax
  4010ea:	b8 00 00 00 00       	mov    eax,0x0
  4010ef:	e8 ec f2 ff ff       	call   4003e0 <fprintf@plt>
        fclose(f);
  4010f4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4010f8:	48 89 c7             	mov    rdi,rax
  4010fb:	e8 b0 f2 ff ff       	call   4003b0 <fclose@plt>
        return -1;
  401100:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401105:	e9 b4 00 00 00       	jmp    4011be <bin_escrever_matriz+0x186>
    }

    const size_t total = (size_t)(mat->m * mat->n);
  40110a:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  40110e:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  401112:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  401116:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  40111a:	48 0f af c2          	imul   rax,rdx
  40111e:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    if (fwrite(mat->dados, sizeof(float), total, f) != total) {
  401122:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  401126:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401129:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  40112d:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  401131:	be 04 00 00 00       	mov    esi,0x4
  401136:	48 89 c7             	mov    rdi,rax
  401139:	e8 e2 f2 ff ff       	call   400420 <fwrite@plt>
  40113e:	48 39 45 f0          	cmp    QWORD PTR [rbp-0x10],rax
  401142:	74 30                	je     401174 <bin_escrever_matriz+0x13c>
        fprintf(stderr, "bin: falha ao escrever o payload de '%s'\n", caminho);
  401144:	48 8b 05 35 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f35]        # 404080 <stderr@GLIBC_2.2.5>
  40114b:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  40114f:	be d0 27 40 00       	mov    esi,0x4027d0
  401154:	48 89 c7             	mov    rdi,rax
  401157:	b8 00 00 00 00       	mov    eax,0x0
  40115c:	e8 7f f2 ff ff       	call   4003e0 <fprintf@plt>
        fclose(f);
  401161:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401165:	48 89 c7             	mov    rdi,rax
  401168:	e8 43 f2 ff ff       	call   4003b0 <fclose@plt>
        return -1;
  40116d:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401172:	eb 4a                	jmp    4011be <bin_escrever_matriz+0x186>
    }

    if (fclose(f) != 0) {
  401174:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401178:	48 89 c7             	mov    rdi,rax
  40117b:	e8 30 f2 ff ff       	call   4003b0 <fclose@plt>
  401180:	85 c0                	test   eax,eax
  401182:	74 35                	je     4011b9 <bin_escrever_matriz+0x181>
        fprintf(stderr, "bin: falha ao fechar '%s': %s\n", caminho, strerror(errno));
  401184:	e8 f7 f1 ff ff       	call   400380 <__errno_location@plt>
  401189:	8b 00                	mov    eax,DWORD PTR [rax]
  40118b:	89 c7                	mov    edi,eax
  40118d:	e8 ae f2 ff ff       	call   400440 <strerror@plt>
  401192:	48 89 c1             	mov    rcx,rax
  401195:	48 8b 05 e4 2e 00 00 	mov    rax,QWORD PTR [rip+0x2ee4]        # 404080 <stderr@GLIBC_2.2.5>
  40119c:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  4011a0:	be 00 28 40 00       	mov    esi,0x402800
  4011a5:	48 89 c7             	mov    rdi,rax
  4011a8:	b8 00 00 00 00       	mov    eax,0x0
  4011ad:	e8 2e f2 ff ff       	call   4003e0 <fprintf@plt>
        return -1;
  4011b2:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4011b7:	eb 05                	jmp    4011be <bin_escrever_matriz+0x186>
    }
    return 0;
  4011b9:	b8 00 00 00 00       	mov    eax,0x0
}
  4011be:	c9                   	leave
  4011bf:	c3                   	ret

00000000004011c0 <bin_escrever_bloco>:

int bin_escrever_bloco(const char *caminho, const void *bloco, size_t bytes) {
  4011c0:	55                   	push   rbp
  4011c1:	48 89 e5             	mov    rbp,rsp
  4011c4:	48 83 ec 30          	sub    rsp,0x30
  4011c8:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  4011cc:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  4011d0:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
    FILE *f = fopen(caminho, "wb");
  4011d4:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4011d8:	be 75 27 40 00       	mov    esi,0x402775
  4011dd:	48 89 c7             	mov    rdi,rax
  4011e0:	e8 2b f2 ff ff       	call   400410 <fopen@plt>
  4011e5:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    if (f == NULL) {
  4011e9:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  4011ee:	75 38                	jne    401228 <bin_escrever_bloco+0x68>
        fprintf(stderr, "bin: nao foi possivel criar '%s': %s\n", caminho, strerror(errno));
  4011f0:	e8 8b f1 ff ff       	call   400380 <__errno_location@plt>
  4011f5:	8b 00                	mov    eax,DWORD PTR [rax]
  4011f7:	89 c7                	mov    edi,eax
  4011f9:	e8 42 f2 ff ff       	call   400440 <strerror@plt>
  4011fe:	48 89 c1             	mov    rcx,rax
  401201:	48 8b 05 78 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e78]        # 404080 <stderr@GLIBC_2.2.5>
  401208:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  40120c:	be 78 27 40 00       	mov    esi,0x402778
  401211:	48 89 c7             	mov    rdi,rax
  401214:	b8 00 00 00 00       	mov    eax,0x0
  401219:	e8 c2 f1 ff ff       	call   4003e0 <fprintf@plt>
        return -1;
  40121e:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401223:	e9 9d 00 00 00       	jmp    4012c5 <bin_escrever_bloco+0x105>
    }

    if (fwrite(bloco, 1, bytes, f) != bytes) {
  401228:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  40122c:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  401230:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  401234:	be 01 00 00 00       	mov    esi,0x1
  401239:	48 89 c7             	mov    rdi,rax
  40123c:	e8 df f1 ff ff       	call   400420 <fwrite@plt>
  401241:	48 39 45 d8          	cmp    QWORD PTR [rbp-0x28],rax
  401245:	74 34                	je     40127b <bin_escrever_bloco+0xbb>
        fprintf(stderr, "bin: falha ao escrever %zu bytes em '%s'\n", bytes, caminho);
  401247:	48 8b 05 32 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e32]        # 404080 <stderr@GLIBC_2.2.5>
  40124e:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  401252:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  401256:	be 20 28 40 00       	mov    esi,0x402820
  40125b:	48 89 c7             	mov    rdi,rax
  40125e:	b8 00 00 00 00       	mov    eax,0x0
  401263:	e8 78 f1 ff ff       	call   4003e0 <fprintf@plt>
        fclose(f);
  401268:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40126c:	48 89 c7             	mov    rdi,rax
  40126f:	e8 3c f1 ff ff       	call   4003b0 <fclose@plt>
        return -1;
  401274:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401279:	eb 4a                	jmp    4012c5 <bin_escrever_bloco+0x105>
    }

    if (fclose(f) != 0) {
  40127b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40127f:	48 89 c7             	mov    rdi,rax
  401282:	e8 29 f1 ff ff       	call   4003b0 <fclose@plt>
  401287:	85 c0                	test   eax,eax
  401289:	74 35                	je     4012c0 <bin_escrever_bloco+0x100>
        fprintf(stderr, "bin: falha ao fechar '%s': %s\n", caminho, strerror(errno));
  40128b:	e8 f0 f0 ff ff       	call   400380 <__errno_location@plt>
  401290:	8b 00                	mov    eax,DWORD PTR [rax]
  401292:	89 c7                	mov    edi,eax
  401294:	e8 a7 f1 ff ff       	call   400440 <strerror@plt>
  401299:	48 89 c1             	mov    rcx,rax
  40129c:	48 8b 05 dd 2d 00 00 	mov    rax,QWORD PTR [rip+0x2ddd]        # 404080 <stderr@GLIBC_2.2.5>
  4012a3:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  4012a7:	be 00 28 40 00       	mov    esi,0x402800
  4012ac:	48 89 c7             	mov    rdi,rax
  4012af:	b8 00 00 00 00       	mov    eax,0x0
  4012b4:	e8 27 f1 ff ff       	call   4003e0 <fprintf@plt>
        return -1;
  4012b9:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4012be:	eb 05                	jmp    4012c5 <bin_escrever_bloco+0x105>
    }
    return 0;
  4012c0:	b8 00 00 00 00       	mov    eax,0x0
}
  4012c5:	c9                   	leave
  4012c6:	c3                   	ret

Disassembly of section .fini:

00000000004012c8 <_fini>:
  4012c8:	f3 0f 1e fa          	endbr64
  4012cc:	48 83 ec 08          	sub    rsp,0x8
  4012d0:	48 83 c4 08          	add    rsp,0x8
  4012d4:	c3                   	ret
