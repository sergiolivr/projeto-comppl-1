
maquinas/aluno1/bin/matmul_fast:     file format elf64-x86-64


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

0000000000400460 <main>:
  400460:	48 81 ec d8 00 00 00 	sub    rsp,0xd8
  400467:	48 89 9c 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rbx
  40046e:	00 
  40046f:	48 89 f3             	mov    rbx,rsi
  400472:	be 28 25 40 00       	mov    esi,0x402528
  400477:	48 89 ac 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rbp
  40047e:	00 
  40047f:	89 fd                	mov    ebp,edi
  400481:	bf 06 00 00 00       	mov    edi,0x6
  400486:	e8 75 ff ff ff       	call   400400 <setlocale@plt>
  40048b:	83 fd 04             	cmp    ebp,0x4
  40048e:	0f 85 31 01 00 00    	jne    4005c5 <main+0x165>
  400494:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
  400498:	31 c0                	xor    eax,eax
  40049a:	31 d2                	xor    edx,edx
  40049c:	31 c9                	xor    ecx,ecx
  40049e:	48 8d 74 24 30       	lea    rsi,[rsp+0x30]
  4004a3:	bf 01 00 00 00       	mov    edi,0x1
  4004a8:	4c 89 b4 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],r14
  4004af:	00 
  4004b0:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  4004b5:	48 89 54 24 60       	mov    QWORD PTR [rsp+0x60],rdx
  4004ba:	48 89 8c 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rcx
  4004c1:	00 
  4004c2:	c5 fa 7f 44 24 48    	vmovdqu XMMWORD PTR [rsp+0x48],xmm0
  4004c8:	c5 fa 7f 44 24 68    	vmovdqu XMMWORD PTR [rsp+0x68],xmm0
  4004ce:	c5 fa 7f 84 24 88 00 	vmovdqu XMMWORD PTR [rsp+0x88],xmm0
  4004d5:	00 00 
  4004d7:	e8 c4 fe ff ff       	call   4003a0 <clock_gettime@plt>
  4004dc:	48 8b 7b 08          	mov    rdi,QWORD PTR [rbx+0x8]
  4004e0:	48 8d 74 24 40       	lea    rsi,[rsp+0x40]
  4004e5:	4c 8b 74 24 30       	mov    r14,QWORD PTR [rsp+0x30]
  4004ea:	48 8b 6c 24 38       	mov    rbp,QWORD PTR [rsp+0x38]
  4004ef:	e8 bc 0d 00 00       	call   4012b0 <bin_ler_matriz>
  4004f4:	85 c0                	test   eax,eax
  4004f6:	74 27                	je     40051f <main+0xbf>
  4004f8:	4c 8b b4 24 c8 00 00 	mov    r14,QWORD PTR [rsp+0xc8]
  4004ff:	00 
  400500:	bb 01 00 00 00       	mov    ebx,0x1
  400505:	89 d8                	mov    eax,ebx
  400507:	48 8b ac 24 b0 00 00 	mov    rbp,QWORD PTR [rsp+0xb0]
  40050e:	00 
  40050f:	48 8b 9c 24 a8 00 00 	mov    rbx,QWORD PTR [rsp+0xa8]
  400516:	00 
  400517:	48 81 c4 d8 00 00 00 	add    rsp,0xd8
  40051e:	c3                   	ret
  40051f:	48 8d 74 24 30       	lea    rsi,[rsp+0x30]
  400524:	bf 01 00 00 00       	mov    edi,0x1
  400529:	e8 72 fe ff ff       	call   4003a0 <clock_gettime@plt>
  40052e:	48 8b 7b 10          	mov    rdi,QWORD PTR [rbx+0x10]
  400532:	48 8d 74 24 60       	lea    rsi,[rsp+0x60]
  400537:	e8 74 0d 00 00       	call   4012b0 <bin_ler_matriz>
  40053c:	85 c0                	test   eax,eax
  40053e:	0f 85 82 02 00 00    	jne    4007c6 <main+0x366>
  400544:	48 8d 74 24 30       	lea    rsi,[rsp+0x30]
  400549:	bf 01 00 00 00       	mov    edi,0x1
  40054e:	4c 89 a4 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],r12
  400555:	00 
  400556:	4c 89 bc 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],r15
  40055d:	00 
  40055e:	e8 3d fe ff ff       	call   4003a0 <clock_gettime@plt>
  400563:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
  400568:	4c 8b 44 24 68       	mov    r8,QWORD PTR [rsp+0x68]
  40056d:	4c 8b 7c 24 30       	mov    r15,QWORD PTR [rsp+0x30]
  400572:	4c 8b 64 24 38       	mov    r12,QWORD PTR [rsp+0x38]
  400577:	4c 8b 4c 24 70       	mov    r9,QWORD PTR [rsp+0x70]
  40057c:	48 8b 74 24 48       	mov    rsi,QWORD PTR [rsp+0x48]
  400581:	4c 39 c1             	cmp    rcx,r8
  400584:	74 5f                	je     4005e5 <main+0x185>
  400586:	48 8b 3d f3 3a 00 00 	mov    rdi,QWORD PTR [rip+0x3af3]        # 404080 <stderr@GLIBC_2.2.5>
  40058d:	48 89 f2             	mov    rdx,rsi
  400590:	31 c0                	xor    eax,eax
  400592:	be 68 25 40 00       	mov    esi,0x402568
  400597:	e8 44 fe ff ff       	call   4003e0 <fprintf@plt>
  40059c:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  4005a1:	e8 ea 0c 00 00       	call   401290 <matriz_liberar>
  4005a6:	48 8d 7c 24 60       	lea    rdi,[rsp+0x60]
  4005ab:	e8 e0 0c 00 00       	call   401290 <matriz_liberar>
  4005b0:	4c 8b a4 24 b8 00 00 	mov    r12,QWORD PTR [rsp+0xb8]
  4005b7:	00 
  4005b8:	4c 8b bc 24 d0 00 00 	mov    r15,QWORD PTR [rsp+0xd0]
  4005bf:	00 
  4005c0:	e9 33 ff ff ff       	jmp    4004f8 <main+0x98>
  4005c5:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
  4005c8:	48 8b 3d b1 3a 00 00 	mov    rdi,QWORD PTR [rip+0x3ab1]        # 404080 <stderr@GLIBC_2.2.5>
  4005cf:	be 30 25 40 00       	mov    esi,0x402530
  4005d4:	31 c0                	xor    eax,eax
  4005d6:	bb 02 00 00 00       	mov    ebx,0x2
  4005db:	e8 00 fe ff ff       	call   4003e0 <fprintf@plt>
  4005e0:	e9 20 ff ff ff       	jmp    400505 <main+0xa5>
  4005e5:	4c 89 ca             	mov    rdx,r9
  4005e8:	48 8d bc 24 80 00 00 	lea    rdi,[rsp+0x80]
  4005ef:	00 
  4005f0:	e8 8b 0b 00 00       	call   401180 <matriz_alocar>
  4005f5:	85 c0                	test   eax,eax
  4005f7:	75 a3                	jne    40059c <main+0x13c>
  4005f9:	48 8d 74 24 30       	lea    rsi,[rsp+0x30]
  4005fe:	bf 01 00 00 00       	mov    edi,0x1
  400603:	4c 89 ac 24 c0 00 00 	mov    QWORD PTR [rsp+0xc0],r13
  40060a:	00 
  40060b:	e8 90 fd ff ff       	call   4003a0 <clock_gettime@plt>
  400610:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  400615:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  40061a:	48 8d 94 24 80 00 00 	lea    rdx,[rsp+0x80]
  400621:	00 
  400622:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  400627:	48 8d 74 24 60       	lea    rsi,[rsp+0x60]
  40062c:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
  400631:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  400636:	e8 45 03 00 00       	call   400980 <matmul_kernel>
  40063b:	48 8d 74 24 30       	lea    rsi,[rsp+0x30]
  400640:	bf 01 00 00 00       	mov    edi,0x1
  400645:	e8 56 fd ff ff       	call   4003a0 <clock_gettime@plt>
  40064a:	4c 8b 44 24 38       	mov    r8,QWORD PTR [rsp+0x38]
  40064f:	48 8b 7b 18          	mov    rdi,QWORD PTR [rbx+0x18]
  400653:	48 8d b4 24 80 00 00 	lea    rsi,[rsp+0x80]
  40065a:	00 
  40065b:	4c 8b 6c 24 30       	mov    r13,QWORD PTR [rsp+0x30]
  400660:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
  400665:	e8 e6 0e 00 00       	call   401550 <bin_escrever_matriz>
  40066a:	89 c3                	mov    ebx,eax
  40066c:	85 c0                	test   eax,eax
  40066e:	0f 85 61 01 00 00    	jne    4007d5 <main+0x375>
  400674:	c5 fb 10 2d bc 21 00 	vmovsd xmm5,QWORD PTR [rip+0x21bc]        # 402838 <__dso_handle+0x318>
  40067b:	00 
  40067c:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  400680:	48 8d 74 24 30       	lea    rsi,[rsp+0x30]
  400685:	bf 01 00 00 00       	mov    edi,0x1
  40068a:	c4 e1 eb 2a 64 24 08 	vcvtsi2sd xmm4,xmm2,QWORD PTR [rsp+0x8]
  400691:	c4 c1 eb 2a cd       	vcvtsi2sd xmm1,xmm2,r13
  400696:	c4 e1 eb 2a 74 24 18 	vcvtsi2sd xmm6,xmm2,QWORD PTR [rsp+0x18]
  40069d:	c5 f8 29 54 24 20    	vmovaps XMMWORD PTR [rsp+0x20],xmm2
  4006a3:	c4 e2 f1 99 e5       	vfmadd132sd xmm4,xmm1,xmm5
  4006a8:	c4 e2 d9 9d f5       	vfnmadd132sd xmm6,xmm4,xmm5
  4006ad:	c5 fb 11 64 24 18    	vmovsd QWORD PTR [rsp+0x18],xmm4
  4006b3:	c5 fb 11 74 24 08    	vmovsd QWORD PTR [rsp+0x8],xmm6
  4006b9:	e8 e2 fc ff ff       	call   4003a0 <clock_gettime@plt>
  4006be:	c5 78 28 44 24 20    	vmovaps xmm8,XMMWORD PTR [rsp+0x20]
  4006c4:	c5 7b 10 25 6c 21 00 	vmovsd xmm12,QWORD PTR [rip+0x216c]        # 402838 <__dso_handle+0x318>
  4006cb:	00 
  4006cc:	4c 8b 4c 24 48       	mov    r9,QWORD PTR [rsp+0x48]
  4006d1:	c5 fb 10 44 24 08    	vmovsd xmm0,QWORD PTR [rsp+0x8]
  4006d7:	c4 e1 bb 2a 5c 24 38 	vcvtsi2sd xmm3,xmm8,QWORD PTR [rsp+0x38]
  4006de:	c4 41 bb 2a cc       	vcvtsi2sd xmm9,xmm8,r12
  4006e3:	c4 41 63 58 d1       	vaddsd xmm10,xmm3,xmm9
  4006e8:	c4 41 bb 2a df       	vcvtsi2sd xmm11,xmm8,r15
  4006ed:	4d 85 c9             	test   r9,r9
  4006f0:	c4 41 bb 2a ee       	vcvtsi2sd xmm13,xmm8,r14
  4006f5:	c4 61 bb 2a 7c 24 10 	vcvtsi2sd xmm15,xmm8,QWORD PTR [rsp+0x10]
  4006fc:	c5 fb 10 64 24 18    	vmovsd xmm4,QWORD PTR [rsp+0x18]
  400702:	c4 c1 7b 5c cf       	vsubsd xmm1,xmm0,xmm15
  400707:	c4 e1 bb 2a 7c 24 30 	vcvtsi2sd xmm7,xmm8,QWORD PTR [rsp+0x30]
  40070e:	c4 42 a1 99 d4       	vfmadd132sd xmm10,xmm11,xmm12
  400713:	c4 41 2b 5c f5       	vsubsd xmm14,xmm10,xmm13
  400718:	0f 88 2b 01 00 00    	js     400849 <main+0x3e9>
  40071e:	c4 c1 bb 2a e9       	vcvtsi2sd xmm5,xmm8,r9
  400723:	4c 8b 5c 24 50       	mov    r11,QWORD PTR [rsp+0x50]
  400728:	4d 85 db             	test   r11,r11
  40072b:	0f 88 fd 00 00 00    	js     40082e <main+0x3ce>
  400731:	c4 c1 bb 2a db       	vcvtsi2sd xmm3,xmm8,r11
  400736:	48 8b 4c 24 70       	mov    rcx,QWORD PTR [rsp+0x70]
  40073b:	c5 53 59 cb          	vmulsd xmm9,xmm5,xmm3
  40073f:	48 85 c9             	test   rcx,rcx
  400742:	0f 88 cb 00 00 00    	js     400813 <main+0x3b3>
  400748:	c4 61 bb 2a d9       	vcvtsi2sd xmm11,xmm8,rcx
  40074d:	c5 23 59 2d eb 20 00 	vmulsd xmm13,xmm11,QWORD PTR [rip+0x20eb]        # 402840 <__dso_handle+0x320>
  400754:	00 
  400755:	c4 61 bb 2a c5       	vcvtsi2sd xmm8,xmm8,rbp
  40075a:	c4 42 c1 9d c4       	vfnmadd132sd xmm8,xmm7,xmm12
  40075f:	bf a8 25 40 00       	mov    edi,0x4025a8
  400764:	b8 03 00 00 00       	mov    eax,0x3
  400769:	c4 41 33 59 fd       	vmulsd xmm15,xmm9,xmm13
  40076e:	c5 bb 5c fc          	vsubsd xmm7,xmm8,xmm4
  400772:	c4 c1 43 58 c6       	vaddsd xmm0,xmm7,xmm14
  400777:	c5 83 5e d1          	vdivsd xmm2,xmm15,xmm1
  40077b:	e8 40 fc ff ff       	call   4003c0 <printf@plt>
  400780:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  400785:	e8 06 0b 00 00       	call   401290 <matriz_liberar>
  40078a:	48 8d 7c 24 60       	lea    rdi,[rsp+0x60]
  40078f:	e8 fc 0a 00 00       	call   401290 <matriz_liberar>
  400794:	48 8d bc 24 80 00 00 	lea    rdi,[rsp+0x80]
  40079b:	00 
  40079c:	e8 ef 0a 00 00       	call   401290 <matriz_liberar>
  4007a1:	4c 8b a4 24 b8 00 00 	mov    r12,QWORD PTR [rsp+0xb8]
  4007a8:	00 
  4007a9:	4c 8b ac 24 c0 00 00 	mov    r13,QWORD PTR [rsp+0xc0]
  4007b0:	00 
  4007b1:	4c 8b b4 24 c8 00 00 	mov    r14,QWORD PTR [rsp+0xc8]
  4007b8:	00 
  4007b9:	4c 8b bc 24 d0 00 00 	mov    r15,QWORD PTR [rsp+0xd0]
  4007c0:	00 
  4007c1:	e9 3f fd ff ff       	jmp    400505 <main+0xa5>
  4007c6:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  4007cb:	e8 c0 0a 00 00       	call   401290 <matriz_liberar>
  4007d0:	e9 23 fd ff ff       	jmp    4004f8 <main+0x98>
  4007d5:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  4007da:	e8 b1 0a 00 00       	call   401290 <matriz_liberar>
  4007df:	48 8d 7c 24 60       	lea    rdi,[rsp+0x60]
  4007e4:	e8 a7 0a 00 00       	call   401290 <matriz_liberar>
  4007e9:	48 8d bc 24 80 00 00 	lea    rdi,[rsp+0x80]
  4007f0:	00 
  4007f1:	e8 9a 0a 00 00       	call   401290 <matriz_liberar>
  4007f6:	4c 8b a4 24 b8 00 00 	mov    r12,QWORD PTR [rsp+0xb8]
  4007fd:	00 
  4007fe:	4c 8b ac 24 c0 00 00 	mov    r13,QWORD PTR [rsp+0xc0]
  400805:	00 
  400806:	4c 8b bc 24 d0 00 00 	mov    r15,QWORD PTR [rsp+0xd0]
  40080d:	00 
  40080e:	e9 e5 fc ff ff       	jmp    4004f8 <main+0x98>
  400813:	48 89 ca             	mov    rdx,rcx
  400816:	83 e1 01             	and    ecx,0x1
  400819:	48 d1 ea             	shr    rdx,1
  40081c:	48 09 d1             	or     rcx,rdx
  40081f:	c4 61 bb 2a d1       	vcvtsi2sd xmm10,xmm8,rcx
  400824:	c4 41 2b 58 da       	vaddsd xmm11,xmm10,xmm10
  400829:	e9 1f ff ff ff       	jmp    40074d <main+0x2ed>
  40082e:	4c 89 d8             	mov    rax,r11
  400831:	41 83 e3 01          	and    r11d,0x1
  400835:	48 d1 e8             	shr    rax,1
  400838:	49 09 c3             	or     r11,rax
  40083b:	c4 c1 bb 2a f3       	vcvtsi2sd xmm6,xmm8,r11
  400840:	c5 cb 58 de          	vaddsd xmm3,xmm6,xmm6
  400844:	e9 ed fe ff ff       	jmp    400736 <main+0x2d6>
  400849:	4d 89 ca             	mov    r10,r9
  40084c:	41 83 e1 01          	and    r9d,0x1
  400850:	49 d1 ea             	shr    r10,1
  400853:	4d 09 d1             	or     r9,r10
  400856:	c4 c1 bb 2a d1       	vcvtsi2sd xmm2,xmm8,r9
  40085b:	c5 eb 58 ea          	vaddsd xmm5,xmm2,xmm2
  40085f:	e9 bf fe ff ff       	jmp    400723 <main+0x2c3>
  400864:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40086b:	00 00 00 
  40086e:	66 90                	xchg   ax,ax

0000000000400870 <set_fast_math>:
  400870:	f3 0f 1e fa          	endbr64
  400874:	0f ae 5c 24 fc       	stmxcsr DWORD PTR [rsp-0x4]
  400879:	8b 44 24 fc          	mov    eax,DWORD PTR [rsp-0x4]
  40087d:	0d 40 80 00 00       	or     eax,0x8040
  400882:	89 44 24 f8          	mov    DWORD PTR [rsp-0x8],eax
  400886:	0f ae 54 24 f8       	ldmxcsr DWORD PTR [rsp-0x8]
  40088b:	c3                   	ret
  40088c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400890 <_start>:
  400890:	f3 0f 1e fa          	endbr64
  400894:	31 ed                	xor    ebp,ebp
  400896:	49 89 d1             	mov    r9,rdx
  400899:	5e                   	pop    rsi
  40089a:	48 89 e2             	mov    rdx,rsp
  40089d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4008a1:	50                   	push   rax
  4008a2:	54                   	push   rsp
  4008a3:	45 31 c0             	xor    r8d,r8d
  4008a6:	31 c9                	xor    ecx,ecx
  4008a8:	48 c7 c7 60 04 40 00 	mov    rdi,0x400460
  4008af:	ff 15 23 37 00 00    	call   QWORD PTR [rip+0x3723]        # 403fd8 <__libc_start_main@GLIBC_2.34>
  4008b5:	f4                   	hlt
  4008b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4008bd:	00 00 00 

00000000004008c0 <_dl_relocate_static_pie>:
  4008c0:	f3 0f 1e fa          	endbr64
  4008c4:	c3                   	ret
  4008c5:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4008cc:	00 00 00 
  4008cf:	90                   	nop

00000000004008d0 <deregister_tm_clones>:
  4008d0:	b8 80 40 40 00       	mov    eax,0x404080
  4008d5:	48 3d 80 40 40 00    	cmp    rax,0x404080
  4008db:	74 13                	je     4008f0 <deregister_tm_clones+0x20>
  4008dd:	b8 00 00 00 00       	mov    eax,0x0
  4008e2:	48 85 c0             	test   rax,rax
  4008e5:	74 09                	je     4008f0 <deregister_tm_clones+0x20>
  4008e7:	bf 80 40 40 00       	mov    edi,0x404080
  4008ec:	ff e0                	jmp    rax
  4008ee:	66 90                	xchg   ax,ax
  4008f0:	c3                   	ret
  4008f1:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4008f5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4008fc:	00 00 00 00 

0000000000400900 <register_tm_clones>:
  400900:	be 80 40 40 00       	mov    esi,0x404080
  400905:	48 81 ee 80 40 40 00 	sub    rsi,0x404080
  40090c:	48 89 f0             	mov    rax,rsi
  40090f:	48 c1 ee 3f          	shr    rsi,0x3f
  400913:	48 c1 f8 03          	sar    rax,0x3
  400917:	48 01 c6             	add    rsi,rax
  40091a:	48 d1 fe             	sar    rsi,1
  40091d:	74 11                	je     400930 <register_tm_clones+0x30>
  40091f:	b8 00 00 00 00       	mov    eax,0x0
  400924:	48 85 c0             	test   rax,rax
  400927:	74 07                	je     400930 <register_tm_clones+0x30>
  400929:	bf 80 40 40 00       	mov    edi,0x404080
  40092e:	ff e0                	jmp    rax
  400930:	c3                   	ret
  400931:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400935:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40093c:	00 00 00 00 

0000000000400940 <__do_global_dtors_aux>:
  400940:	f3 0f 1e fa          	endbr64
  400944:	80 3d 3d 37 00 00 00 	cmp    BYTE PTR [rip+0x373d],0x0        # 404088 <completed.0>
  40094b:	75 13                	jne    400960 <__do_global_dtors_aux+0x20>
  40094d:	55                   	push   rbp
  40094e:	48 89 e5             	mov    rbp,rsp
  400951:	e8 7a ff ff ff       	call   4008d0 <deregister_tm_clones>
  400956:	c6 05 2b 37 00 00 01 	mov    BYTE PTR [rip+0x372b],0x1        # 404088 <completed.0>
  40095d:	5d                   	pop    rbp
  40095e:	c3                   	ret
  40095f:	90                   	nop
  400960:	c3                   	ret
  400961:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400965:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40096c:	00 00 00 00 

0000000000400970 <frame_dummy>:
  400970:	f3 0f 1e fa          	endbr64
  400974:	eb 8a                	jmp    400900 <register_tm_clones>
  400976:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40097d:	00 00 00 

0000000000400980 <matmul_kernel>:
  400980:	55                   	push   rbp
  400981:	48 89 e5             	mov    rbp,rsp
  400984:	41 57                	push   r15
  400986:	41 56                	push   r14
  400988:	41 55                	push   r13
  40098a:	41 54                	push   r12
  40098c:	53                   	push   rbx
  40098d:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
  400991:	48 81 ec a0 00 00 00 	sub    rsp,0xa0
  400998:	4c 8b 47 08          	mov    r8,QWORD PTR [rdi+0x8]
  40099c:	4c 8b 6e 10          	mov    r13,QWORD PTR [rsi+0x10]
  4009a0:	48 8b 1a             	mov    rbx,QWORD PTR [rdx]
  4009a3:	4c 8b 77 10          	mov    r14,QWORD PTR [rdi+0x10]
  4009a7:	4c 89 c2             	mov    rdx,r8
  4009aa:	4e 8d 24 ad 00 00 00 	lea    r12,[r13*4+0x0]
  4009b1:	00 
  4009b2:	4c 8b 17             	mov    r10,QWORD PTR [rdi]
  4009b5:	4c 8b 3e             	mov    r15,QWORD PTR [rsi]
  4009b8:	49 0f af d4          	imul   rdx,r12
  4009bc:	31 f6                	xor    esi,esi
  4009be:	48 89 df             	mov    rdi,rbx
  4009c1:	4c 89 74 24 38       	mov    QWORD PTR [rsp+0x38],r14
  4009c6:	4c 89 94 24 90 00 00 	mov    QWORD PTR [rsp+0x90],r10
  4009cd:	00 
  4009ce:	48 89 5c 24 58       	mov    QWORD PTR [rsp+0x58],rbx
  4009d3:	4c 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],r8
  4009da:	00 
  4009db:	e8 f0 f9 ff ff       	call   4003d0 <memset@plt>
  4009e0:	48 8b b4 24 98 00 00 	mov    rsi,QWORD PTR [rsp+0x98]
  4009e7:	00 
  4009e8:	48 85 f6             	test   rsi,rsi
  4009eb:	0f 84 8a 04 00 00    	je     400e7b <matmul_kernel+0x4fb>
  4009f1:	4d 85 f6             	test   r14,r14
  4009f4:	0f 84 81 04 00 00    	je     400e7b <matmul_kernel+0x4fb>
  4009fa:	4c 8b 8c 24 90 00 00 	mov    r9,QWORD PTR [rsp+0x90]
  400a01:	00 
  400a02:	4a 8d 3c b5 00 00 00 	lea    rdi,[r14*4+0x0]
  400a09:	00 
  400a0a:	48 c7 44 24 68 00 00 	mov    QWORD PTR [rsp+0x68],0x0
  400a11:	00 00 
  400a13:	49 89 de             	mov    r14,rbx
  400a16:	48 89 74 24 28       	mov    QWORD PTR [rsp+0x28],rsi
  400a1b:	4c 29 fb             	sub    rbx,r15
  400a1e:	31 c9                	xor    ecx,ecx
  400a20:	49 8d 04 39          	lea    rax,[r9+rdi*1]
  400a24:	4c 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],r9
  400a29:	48 89 da             	mov    rdx,rbx
  400a2c:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  400a33:	00 
  400a34:	48 c7 44 24 50 00 00 	mov    QWORD PTR [rsp+0x50],0x0
  400a3b:	00 00 
  400a3d:	4c 89 64 24 20       	mov    QWORD PTR [rsp+0x20],r12
  400a42:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
  400a47:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  400a4e:	00 00 
  400a50:	4d 89 f4             	mov    r12,r14
  400a53:	48 8d 5a fc          	lea    rbx,[rdx-0x4]
  400a57:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  400a5c:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
  400a61:	49 f7 dc             	neg    r12
  400a64:	48 89 5c 24 78       	mov    QWORD PTR [rsp+0x78],rbx
  400a69:	49 c1 ec 02          	shr    r12,0x2
  400a6d:	48 89 54 24 48       	mov    QWORD PTR [rsp+0x48],rdx
  400a72:	4c 89 f2             	mov    rdx,r14
  400a75:	4d 8d 1c 8b          	lea    r11,[r11+rcx*4]
  400a79:	41 83 e4 07          	and    r12d,0x7
  400a7d:	4d 39 ec             	cmp    r12,r13
  400a80:	4d 0f 47 e5          	cmova  r12,r13
  400a84:	45 31 c9             	xor    r9d,r9d
  400a87:	4f 8d 14 a6          	lea    r10,[r14+r12*4]
  400a8b:	4d 8d 44 24 ff       	lea    r8,[r12-0x1]
  400a90:	4d 89 e6             	mov    r14,r12
  400a93:	49 8d 74 24 fc       	lea    rsi,[r12-0x4]
  400a98:	4c 89 44 24 70       	mov    QWORD PTR [rsp+0x70],r8
  400a9d:	49 89 d4             	mov    r12,rdx
  400aa0:	4c 89 94 24 80 00 00 	mov    QWORD PTR [rsp+0x80],r10
  400aa7:	00 
  400aa8:	48 89 74 24 60       	mov    QWORD PTR [rsp+0x60],rsi
  400aad:	0f 1f 00             	nop    DWORD PTR [rax]
  400ab0:	c4 c1 7a 10 0b       	vmovss xmm1,DWORD PTR [r11]
  400ab5:	4a 8d 0c 8d 00 00 00 	lea    rcx,[r9*4+0x0]
  400abc:	00 
  400abd:	49 8d 3c 0f          	lea    rdi,[r15+rcx*1]
  400ac1:	48 89 bc 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rdi
  400ac8:	00 
  400ac9:	c4 e2 7d 18 d1       	vbroadcastss ymm2,xmm1
  400ace:	4d 85 f6             	test   r14,r14
  400ad1:	0f 84 09 06 00 00    	je     4010e0 <matmul_kernel+0x760>
  400ad7:	49 83 fe 01          	cmp    r14,0x1
  400adb:	0f 84 0f 06 00 00    	je     4010f0 <matmul_kernel+0x770>
  400ae1:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  400ae6:	48 29 c8             	sub    rax,rcx
  400ae9:	48 83 f8 08          	cmp    rax,0x8
  400aed:	0f 86 13 05 00 00    	jbe    401006 <matmul_kernel+0x686>
  400af3:	48 83 7c 24 70 02    	cmp    QWORD PTR [rsp+0x70],0x2
  400af9:	0f 86 08 06 00 00    	jbe    401107 <matmul_kernel+0x787>
  400aff:	c4 81 78 10 1c 8f    	vmovups xmm3,XMMWORD PTR [r15+r9*4]
  400b05:	c5 f8 28 ea          	vmovaps xmm5,xmm2
  400b09:	c4 c2 69 a8 1c 24    	vfmadd213ps xmm3,xmm2,XMMWORD PTR [r12]
  400b0f:	c4 c1 78 11 1c 24    	vmovups XMMWORD PTR [r12],xmm3
  400b15:	49 83 fe 04          	cmp    r14,0x4
  400b19:	74 5f                	je     400b7a <matmul_kernel+0x1fa>
  400b1b:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  400b20:	41 ba 04 00 00 00    	mov    r10d,0x4
  400b26:	48 83 fb 01          	cmp    rbx,0x1
  400b2a:	49 89 d8             	mov    r8,rbx
  400b2d:	74 31                	je     400b60 <matmul_kernel+0x1e0>
  400b2f:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
  400b34:	48 8b 4c 24 58       	mov    rcx,QWORD PTR [rsp+0x58]
  400b39:	4b 8d 3c 11          	lea    rdi,[r9+r10*1]
  400b3d:	c4 c1 7a 7e 24 bf    	vmovq  xmm4,QWORD PTR [r15+rdi*4]
  400b43:	4a 8d 14 16          	lea    rdx,[rsi+r10*1]
  400b47:	c5 fa 7e 34 91       	vmovq  xmm6,QWORD PTR [rcx+rdx*4]
  400b4c:	c4 e2 49 98 ec       	vfmadd132ps xmm5,xmm6,xmm4
  400b51:	c5 f8 13 2c 91       	vmovlps QWORD PTR [rcx+rdx*4],xmm5
  400b56:	49 83 f8 02          	cmp    r8,0x2
  400b5a:	74 1e                	je     400b7a <matmul_kernel+0x1fa>
  400b5c:	49 83 c2 02          	add    r10,0x2
  400b60:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  400b67:	00 
  400b68:	c4 a1 7a 10 3c 90    	vmovss xmm7,DWORD PTR [rax+r10*4]
  400b6e:	c4 82 71 a9 3c 94    	vfmadd213ss xmm7,xmm1,DWORD PTR [r12+r10*4]
  400b74:	c4 81 7a 11 3c 94    	vmovss DWORD PTR [r12+r10*4],xmm7
  400b7a:	48 8b 94 24 80 00 00 	mov    rdx,QWORD PTR [rsp+0x80]
  400b81:	00 
  400b82:	4d 89 f2             	mov    r10,r14
  400b85:	4d 39 ea             	cmp    r10,r13
  400b88:	0f 83 93 02 00 00    	jae    400e21 <matmul_kernel+0x4a1>
  400b8e:	4d 89 e8             	mov    r8,r13
  400b91:	4d 29 d0             	sub    r8,r10
  400b94:	49 8d 78 ff          	lea    rdi,[r8-0x1]
  400b98:	48 83 ff 02          	cmp    rdi,0x2
  400b9c:	0f 86 ee 02 00 00    	jbe    400e90 <matmul_kernel+0x510>
  400ba2:	4b 8d 1c 0a          	lea    rbx,[r10+r9*1]
  400ba6:	48 89 d1             	mov    rcx,rdx
  400ba9:	49 8d 74 9f 04       	lea    rsi,[r15+rbx*4+0x4]
  400bae:	48 29 f1             	sub    rcx,rsi
  400bb1:	48 83 f9 18          	cmp    rcx,0x18
  400bb5:	0f 86 d5 02 00 00    	jbe    400e90 <matmul_kernel+0x510>
  400bbb:	48 83 ff 06          	cmp    rdi,0x6
  400bbf:	0f 86 51 05 00 00    	jbe    401116 <matmul_kernel+0x796>
  400bc5:	4c 89 c6             	mov    rsi,r8
  400bc8:	49 8d 0c 9f          	lea    rcx,[r15+rbx*4]
  400bcc:	c5 7c 28 fa          	vmovaps ymm15,ymm2
  400bd0:	31 c0                	xor    eax,eax
  400bd2:	48 c1 ee 03          	shr    rsi,0x3
  400bd6:	48 89 b4 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rsi
  400bdd:	00 
  400bde:	48 c1 e6 05          	shl    rsi,0x5
  400be2:	48 8d 7e e0          	lea    rdi,[rsi-0x20]
  400be6:	48 c1 ef 05          	shr    rdi,0x5
  400bea:	48 ff c7             	inc    rdi
  400bed:	83 e7 07             	and    edi,0x7
  400bf0:	0f 84 bb 00 00 00    	je     400cb1 <matmul_kernel+0x331>
  400bf6:	48 83 ff 01          	cmp    rdi,0x1
  400bfa:	0f 84 94 00 00 00    	je     400c94 <matmul_kernel+0x314>
  400c00:	48 83 ff 02          	cmp    rdi,0x2
  400c04:	74 7a                	je     400c80 <matmul_kernel+0x300>
  400c06:	48 83 ff 03          	cmp    rdi,0x3
  400c0a:	74 60                	je     400c6c <matmul_kernel+0x2ec>
  400c0c:	48 83 ff 04          	cmp    rdi,0x4
  400c10:	74 46                	je     400c58 <matmul_kernel+0x2d8>
  400c12:	48 83 ff 05          	cmp    rdi,0x5
  400c16:	74 2c                	je     400c44 <matmul_kernel+0x2c4>
  400c18:	48 83 ff 06          	cmp    rdi,0x6
  400c1c:	74 12                	je     400c30 <matmul_kernel+0x2b0>
  400c1e:	c5 fc 10 01          	vmovups ymm0,YMMWORD PTR [rcx]
  400c22:	b8 20 00 00 00       	mov    eax,0x20
  400c27:	c4 e2 6d a8 02       	vfmadd213ps ymm0,ymm2,YMMWORD PTR [rdx]
  400c2c:	c5 fc 29 02          	vmovaps YMMWORD PTR [rdx],ymm0
  400c30:	c5 fc 10 2c 01       	vmovups ymm5,YMMWORD PTR [rcx+rax*1]
  400c35:	c4 e2 05 a8 2c 02    	vfmadd213ps ymm5,ymm15,YMMWORD PTR [rdx+rax*1]
  400c3b:	c5 fc 29 2c 02       	vmovaps YMMWORD PTR [rdx+rax*1],ymm5
  400c40:	48 83 c0 20          	add    rax,0x20
  400c44:	c5 fc 10 1c 01       	vmovups ymm3,YMMWORD PTR [rcx+rax*1]
  400c49:	c4 e2 05 a8 1c 02    	vfmadd213ps ymm3,ymm15,YMMWORD PTR [rdx+rax*1]
  400c4f:	c5 fc 29 1c 02       	vmovaps YMMWORD PTR [rdx+rax*1],ymm3
  400c54:	48 83 c0 20          	add    rax,0x20
  400c58:	c5 fc 10 24 01       	vmovups ymm4,YMMWORD PTR [rcx+rax*1]
  400c5d:	c4 e2 05 a8 24 02    	vfmadd213ps ymm4,ymm15,YMMWORD PTR [rdx+rax*1]
  400c63:	c5 fc 29 24 02       	vmovaps YMMWORD PTR [rdx+rax*1],ymm4
  400c68:	48 83 c0 20          	add    rax,0x20
  400c6c:	c5 fc 10 34 01       	vmovups ymm6,YMMWORD PTR [rcx+rax*1]
  400c71:	c4 e2 05 a8 34 02    	vfmadd213ps ymm6,ymm15,YMMWORD PTR [rdx+rax*1]
  400c77:	c5 fc 29 34 02       	vmovaps YMMWORD PTR [rdx+rax*1],ymm6
  400c7c:	48 83 c0 20          	add    rax,0x20
  400c80:	c5 fc 10 3c 01       	vmovups ymm7,YMMWORD PTR [rcx+rax*1]
  400c85:	c4 e2 05 a8 3c 02    	vfmadd213ps ymm7,ymm15,YMMWORD PTR [rdx+rax*1]
  400c8b:	c5 fc 29 3c 02       	vmovaps YMMWORD PTR [rdx+rax*1],ymm7
  400c90:	48 83 c0 20          	add    rax,0x20
  400c94:	c5 7c 10 04 01       	vmovups ymm8,YMMWORD PTR [rcx+rax*1]
  400c99:	c4 62 05 a8 04 02    	vfmadd213ps ymm8,ymm15,YMMWORD PTR [rdx+rax*1]
  400c9f:	c5 7c 29 04 02       	vmovaps YMMWORD PTR [rdx+rax*1],ymm8
  400ca4:	48 83 c0 20          	add    rax,0x20
  400ca8:	48 39 f0             	cmp    rax,rsi
  400cab:	0f 84 c8 00 00 00    	je     400d79 <matmul_kernel+0x3f9>
  400cb1:	c5 7c 10 0c 01       	vmovups ymm9,YMMWORD PTR [rcx+rax*1]
  400cb6:	c4 62 05 a8 0c 02    	vfmadd213ps ymm9,ymm15,YMMWORD PTR [rdx+rax*1]
  400cbc:	c5 7c 29 0c 02       	vmovaps YMMWORD PTR [rdx+rax*1],ymm9
  400cc1:	c5 7c 10 54 01 20    	vmovups ymm10,YMMWORD PTR [rcx+rax*1+0x20]
  400cc7:	c4 62 05 a8 54 02 20 	vfmadd213ps ymm10,ymm15,YMMWORD PTR [rdx+rax*1+0x20]
  400cce:	c5 7c 29 54 02 20    	vmovaps YMMWORD PTR [rdx+rax*1+0x20],ymm10
  400cd4:	c5 7c 10 5c 01 40    	vmovups ymm11,YMMWORD PTR [rcx+rax*1+0x40]
  400cda:	c4 62 05 a8 5c 02 40 	vfmadd213ps ymm11,ymm15,YMMWORD PTR [rdx+rax*1+0x40]
  400ce1:	c5 7c 29 5c 02 40    	vmovaps YMMWORD PTR [rdx+rax*1+0x40],ymm11
  400ce7:	c5 7c 10 64 01 60    	vmovups ymm12,YMMWORD PTR [rcx+rax*1+0x60]
  400ced:	c4 62 05 a8 64 02 60 	vfmadd213ps ymm12,ymm15,YMMWORD PTR [rdx+rax*1+0x60]
  400cf4:	c5 7c 29 64 02 60    	vmovaps YMMWORD PTR [rdx+rax*1+0x60],ymm12
  400cfa:	c5 7c 10 ac 01 80 00 	vmovups ymm13,YMMWORD PTR [rcx+rax*1+0x80]
  400d01:	00 00 
  400d03:	c4 62 05 a8 ac 02 80 	vfmadd213ps ymm13,ymm15,YMMWORD PTR [rdx+rax*1+0x80]
  400d0a:	00 00 00 
  400d0d:	c5 7c 29 ac 02 80 00 	vmovaps YMMWORD PTR [rdx+rax*1+0x80],ymm13
  400d14:	00 00 
  400d16:	c5 7c 10 b4 01 a0 00 	vmovups ymm14,YMMWORD PTR [rcx+rax*1+0xa0]
  400d1d:	00 00 
  400d1f:	c4 62 05 a8 b4 02 a0 	vfmadd213ps ymm14,ymm15,YMMWORD PTR [rdx+rax*1+0xa0]
  400d26:	00 00 00 
  400d29:	c5 7c 29 b4 02 a0 00 	vmovaps YMMWORD PTR [rdx+rax*1+0xa0],ymm14
  400d30:	00 00 
  400d32:	c5 fc 10 84 01 c0 00 	vmovups ymm0,YMMWORD PTR [rcx+rax*1+0xc0]
  400d39:	00 00 
  400d3b:	c4 e2 05 a8 84 02 c0 	vfmadd213ps ymm0,ymm15,YMMWORD PTR [rdx+rax*1+0xc0]
  400d42:	00 00 00 
  400d45:	c5 fc 29 84 02 c0 00 	vmovaps YMMWORD PTR [rdx+rax*1+0xc0],ymm0
  400d4c:	00 00 
  400d4e:	c5 fc 10 ac 01 e0 00 	vmovups ymm5,YMMWORD PTR [rcx+rax*1+0xe0]
  400d55:	00 00 
  400d57:	c4 e2 05 a8 ac 02 e0 	vfmadd213ps ymm5,ymm15,YMMWORD PTR [rdx+rax*1+0xe0]
  400d5e:	00 00 00 
  400d61:	c5 fc 29 ac 02 e0 00 	vmovaps YMMWORD PTR [rdx+rax*1+0xe0],ymm5
  400d68:	00 00 
  400d6a:	48 05 00 01 00 00    	add    rax,0x100
  400d70:	48 39 f0             	cmp    rax,rsi
  400d73:	0f 85 38 ff ff ff    	jne    400cb1 <matmul_kernel+0x331>
  400d79:	48 8b bc 24 90 00 00 	mov    rdi,QWORD PTR [rsp+0x90]
  400d80:	00 
  400d81:	48 c1 e7 03          	shl    rdi,0x3
  400d85:	4c 39 c7             	cmp    rdi,r8
  400d88:	0f 84 93 00 00 00    	je     400e21 <matmul_kernel+0x4a1>
  400d8e:	49 29 f8             	sub    r8,rdi
  400d91:	4a 8d 04 17          	lea    rax,[rdi+r10*1]
  400d95:	49 8d 48 ff          	lea    rcx,[r8-0x1]
  400d99:	48 83 f9 02          	cmp    rcx,0x2
  400d9d:	76 26                	jbe    400dc5 <matmul_kernel+0x445>
  400d9f:	c5 78 28 3c ba       	vmovaps xmm15,XMMWORD PTR [rdx+rdi*4]
  400da4:	48 01 fb             	add    rbx,rdi
  400da7:	c4 c2 01 98 14 9f    	vfmadd132ps xmm2,xmm15,XMMWORD PTR [r15+rbx*4]
  400dad:	4c 89 c3             	mov    rbx,r8
  400db0:	48 83 e3 fc          	and    rbx,0xfffffffffffffffc
  400db4:	41 83 e0 03          	and    r8d,0x3
  400db8:	c5 f8 29 14 ba       	vmovaps XMMWORD PTR [rdx+rdi*4],xmm2
  400dbd:	74 62                	je     400e21 <matmul_kernel+0x4a1>
  400dbf:	48 01 d8             	add    rax,rbx
  400dc2:	48 01 df             	add    rdi,rbx
  400dc5:	48 8b b4 24 98 00 00 	mov    rsi,QWORD PTR [rsp+0x98]
  400dcc:	00 
  400dcd:	4c 8d 04 bd 00 00 00 	lea    r8,[rdi*4+0x0]
  400dd4:	00 
  400dd5:	c5 fa 10 14 86       	vmovss xmm2,DWORD PTR [rsi+rax*4]
  400dda:	4a 8d 44 17 01       	lea    rax,[rdi+r10*1+0x1]
  400ddf:	c4 a2 71 a9 14 02    	vfmadd213ss xmm2,xmm1,DWORD PTR [rdx+r8*1]
  400de5:	c4 a1 7a 11 14 02    	vmovss DWORD PTR [rdx+r8*1],xmm2
  400deb:	4c 39 e8             	cmp    rax,r13
  400dee:	73 31                	jae    400e21 <matmul_kernel+0x4a1>
  400df0:	c5 fa 10 1c 86       	vmovss xmm3,DWORD PTR [rsi+rax*4]
  400df5:	4e 8d 54 17 02       	lea    r10,[rdi+r10*1+0x2]
  400dfa:	c4 a2 71 a9 5c 02 04 	vfmadd213ss xmm3,xmm1,DWORD PTR [rdx+r8*1+0x4]
  400e01:	c4 a1 7a 11 5c 02 04 	vmovss DWORD PTR [rdx+r8*1+0x4],xmm3
  400e08:	4d 39 ea             	cmp    r10,r13
  400e0b:	73 14                	jae    400e21 <matmul_kernel+0x4a1>
  400e0d:	c4 a1 7a 10 64 02 08 	vmovss xmm4,DWORD PTR [rdx+r8*1+0x8]
  400e14:	c4 a2 59 99 0c 96    	vfmadd132ss xmm1,xmm4,DWORD PTR [rsi+r10*4]
  400e1a:	c4 a1 7a 11 4c 02 08 	vmovss DWORD PTR [rdx+r8*1+0x8],xmm1
  400e21:	49 83 c3 04          	add    r11,0x4
  400e25:	4d 01 e9             	add    r9,r13
  400e28:	4c 3b 9c 24 88 00 00 	cmp    r11,QWORD PTR [rsp+0x88]
  400e2f:	00 
  400e30:	0f 85 7a fc ff ff    	jne    400ab0 <matmul_kernel+0x130>
  400e36:	48 ff 44 24 50       	inc    QWORD PTR [rsp+0x50]
  400e3b:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  400e40:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  400e45:	48 8b 4c 24 40       	mov    rcx,QWORD PTR [rsp+0x40]
  400e4a:	4c 8b 4c 24 18       	mov    r9,QWORD PTR [rsp+0x18]
  400e4f:	4c 01 6c 24 68       	add    QWORD PTR [rsp+0x68],r13
  400e54:	4f 8d 34 04          	lea    r14,[r12+r8*1]
  400e58:	48 03 4c 24 38       	add    rcx,QWORD PTR [rsp+0x38]
  400e5d:	4c 01 c2             	add    rdx,r8
  400e60:	4c 8b 5c 24 50       	mov    r11,QWORD PTR [rsp+0x50]
  400e65:	4c 01 8c 24 88 00 00 	add    QWORD PTR [rsp+0x88],r9
  400e6c:	00 
  400e6d:	4c 39 5c 24 28       	cmp    QWORD PTR [rsp+0x28],r11
  400e72:	0f 85 d8 fb ff ff    	jne    400a50 <matmul_kernel+0xd0>
  400e78:	c5 f8 77             	vzeroupper
  400e7b:	48 8d 65 d8          	lea    rsp,[rbp-0x28]
  400e7f:	5b                   	pop    rbx
  400e80:	41 5c                	pop    r12
  400e82:	41 5d                	pop    r13
  400e84:	41 5e                	pop    r14
  400e86:	41 5f                	pop    r15
  400e88:	5d                   	pop    rbp
  400e89:	c3                   	ret
  400e8a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  400e90:	48 8b bc 24 98 00 00 	mov    rdi,QWORD PTR [rsp+0x98]
  400e97:	00 
  400e98:	4c 89 c3             	mov    rbx,r8
  400e9b:	31 f6                	xor    esi,esi
  400e9d:	4a 8d 0c 97          	lea    rcx,[rdi+r10*4]
  400ea1:	83 e3 07             	and    ebx,0x7
  400ea4:	0f 84 b5 00 00 00    	je     400f5f <matmul_kernel+0x5df>
  400eaa:	48 83 fb 01          	cmp    rbx,0x1
  400eae:	0f 84 8f 00 00 00    	je     400f43 <matmul_kernel+0x5c3>
  400eb4:	48 83 fb 02          	cmp    rbx,0x2
  400eb8:	74 76                	je     400f30 <matmul_kernel+0x5b0>
  400eba:	48 83 fb 03          	cmp    rbx,0x3
  400ebe:	74 5d                	je     400f1d <matmul_kernel+0x59d>
  400ec0:	48 83 fb 04          	cmp    rbx,0x4
  400ec4:	74 44                	je     400f0a <matmul_kernel+0x58a>
  400ec6:	48 83 fb 05          	cmp    rbx,0x5
  400eca:	74 2b                	je     400ef7 <matmul_kernel+0x577>
  400ecc:	48 83 fb 06          	cmp    rbx,0x6
  400ed0:	74 12                	je     400ee4 <matmul_kernel+0x564>
  400ed2:	c5 fa 10 31          	vmovss xmm6,DWORD PTR [rcx]
  400ed6:	be 01 00 00 00       	mov    esi,0x1
  400edb:	c4 e2 71 a9 32       	vfmadd213ss xmm6,xmm1,DWORD PTR [rdx]
  400ee0:	c5 fa 11 32          	vmovss DWORD PTR [rdx],xmm6
  400ee4:	c5 fa 10 3c b1       	vmovss xmm7,DWORD PTR [rcx+rsi*4]
  400ee9:	c4 e2 71 a9 3c b2    	vfmadd213ss xmm7,xmm1,DWORD PTR [rdx+rsi*4]
  400eef:	c5 fa 11 3c b2       	vmovss DWORD PTR [rdx+rsi*4],xmm7
  400ef4:	48 ff c6             	inc    rsi
  400ef7:	c5 7a 10 04 b1       	vmovss xmm8,DWORD PTR [rcx+rsi*4]
  400efc:	c4 62 71 a9 04 b2    	vfmadd213ss xmm8,xmm1,DWORD PTR [rdx+rsi*4]
  400f02:	c5 7a 11 04 b2       	vmovss DWORD PTR [rdx+rsi*4],xmm8
  400f07:	48 ff c6             	inc    rsi
  400f0a:	c5 7a 10 0c b1       	vmovss xmm9,DWORD PTR [rcx+rsi*4]
  400f0f:	c4 62 71 a9 0c b2    	vfmadd213ss xmm9,xmm1,DWORD PTR [rdx+rsi*4]
  400f15:	c5 7a 11 0c b2       	vmovss DWORD PTR [rdx+rsi*4],xmm9
  400f1a:	48 ff c6             	inc    rsi
  400f1d:	c5 7a 10 14 b1       	vmovss xmm10,DWORD PTR [rcx+rsi*4]
  400f22:	c4 62 71 a9 14 b2    	vfmadd213ss xmm10,xmm1,DWORD PTR [rdx+rsi*4]
  400f28:	c5 7a 11 14 b2       	vmovss DWORD PTR [rdx+rsi*4],xmm10
  400f2d:	48 ff c6             	inc    rsi
  400f30:	c5 7a 10 1c b1       	vmovss xmm11,DWORD PTR [rcx+rsi*4]
  400f35:	c4 62 71 a9 1c b2    	vfmadd213ss xmm11,xmm1,DWORD PTR [rdx+rsi*4]
  400f3b:	c5 7a 11 1c b2       	vmovss DWORD PTR [rdx+rsi*4],xmm11
  400f40:	48 ff c6             	inc    rsi
  400f43:	c5 7a 10 24 b1       	vmovss xmm12,DWORD PTR [rcx+rsi*4]
  400f48:	c4 62 71 a9 24 b2    	vfmadd213ss xmm12,xmm1,DWORD PTR [rdx+rsi*4]
  400f4e:	c5 7a 11 24 b2       	vmovss DWORD PTR [rdx+rsi*4],xmm12
  400f53:	48 ff c6             	inc    rsi
  400f56:	4c 39 c6             	cmp    rsi,r8
  400f59:	0f 84 c2 fe ff ff    	je     400e21 <matmul_kernel+0x4a1>
  400f5f:	c5 7a 10 2c b1       	vmovss xmm13,DWORD PTR [rcx+rsi*4]
  400f64:	c4 62 71 a9 2c b2    	vfmadd213ss xmm13,xmm1,DWORD PTR [rdx+rsi*4]
  400f6a:	c5 7a 11 2c b2       	vmovss DWORD PTR [rdx+rsi*4],xmm13
  400f6f:	c5 7a 10 74 b1 04    	vmovss xmm14,DWORD PTR [rcx+rsi*4+0x4]
  400f75:	c4 62 71 a9 74 b2 04 	vfmadd213ss xmm14,xmm1,DWORD PTR [rdx+rsi*4+0x4]
  400f7c:	c5 7a 11 74 b2 04    	vmovss DWORD PTR [rdx+rsi*4+0x4],xmm14
  400f82:	c5 fa 10 44 b1 08    	vmovss xmm0,DWORD PTR [rcx+rsi*4+0x8]
  400f88:	c4 e2 71 a9 44 b2 08 	vfmadd213ss xmm0,xmm1,DWORD PTR [rdx+rsi*4+0x8]
  400f8f:	c5 fa 11 44 b2 08    	vmovss DWORD PTR [rdx+rsi*4+0x8],xmm0
  400f95:	c5 fa 10 6c b1 0c    	vmovss xmm5,DWORD PTR [rcx+rsi*4+0xc]
  400f9b:	c4 e2 71 a9 6c b2 0c 	vfmadd213ss xmm5,xmm1,DWORD PTR [rdx+rsi*4+0xc]
  400fa2:	c5 fa 11 6c b2 0c    	vmovss DWORD PTR [rdx+rsi*4+0xc],xmm5
  400fa8:	c5 7a 10 7c b1 10    	vmovss xmm15,DWORD PTR [rcx+rsi*4+0x10]
  400fae:	c4 62 71 a9 7c b2 10 	vfmadd213ss xmm15,xmm1,DWORD PTR [rdx+rsi*4+0x10]
  400fb5:	c5 7a 11 7c b2 10    	vmovss DWORD PTR [rdx+rsi*4+0x10],xmm15
  400fbb:	c5 fa 10 54 b1 14    	vmovss xmm2,DWORD PTR [rcx+rsi*4+0x14]
  400fc1:	c4 e2 71 a9 54 b2 14 	vfmadd213ss xmm2,xmm1,DWORD PTR [rdx+rsi*4+0x14]
  400fc8:	c5 fa 11 54 b2 14    	vmovss DWORD PTR [rdx+rsi*4+0x14],xmm2
  400fce:	c5 fa 10 5c b1 18    	vmovss xmm3,DWORD PTR [rcx+rsi*4+0x18]
  400fd4:	c4 e2 71 a9 5c b2 18 	vfmadd213ss xmm3,xmm1,DWORD PTR [rdx+rsi*4+0x18]
  400fdb:	c5 fa 11 5c b2 18    	vmovss DWORD PTR [rdx+rsi*4+0x18],xmm3
  400fe1:	c5 fa 10 64 b1 1c    	vmovss xmm4,DWORD PTR [rcx+rsi*4+0x1c]
  400fe7:	c4 e2 71 a9 64 b2 1c 	vfmadd213ss xmm4,xmm1,DWORD PTR [rdx+rsi*4+0x1c]
  400fee:	c5 fa 11 64 b2 1c    	vmovss DWORD PTR [rdx+rsi*4+0x1c],xmm4
  400ff4:	48 83 c6 08          	add    rsi,0x8
  400ff8:	4c 39 c6             	cmp    rsi,r8
  400ffb:	0f 85 5e ff ff ff    	jne    400f5f <matmul_kernel+0x5df>
  401001:	e9 1b fe ff ff       	jmp    400e21 <matmul_kernel+0x4a1>
  401006:	c4 01 7a 10 04 8f    	vmovss xmm8,DWORD PTR [r15+r9*4]
  40100c:	c4 42 71 a9 04 24    	vfmadd213ss xmm8,xmm1,DWORD PTR [r12]
  401012:	c4 41 7a 11 04 24    	vmovss DWORD PTR [r12],xmm8
  401018:	c4 01 7a 10 4c 8f 04 	vmovss xmm9,DWORD PTR [r15+r9*4+0x4]
  40101f:	c4 42 71 a9 4c 24 04 	vfmadd213ss xmm9,xmm1,DWORD PTR [r12+0x4]
  401026:	c4 41 7a 11 4c 24 04 	vmovss DWORD PTR [r12+0x4],xmm9
  40102d:	49 83 fe 02          	cmp    r14,0x2
  401031:	0f 84 43 fb ff ff    	je     400b7a <matmul_kernel+0x1fa>
  401037:	c4 01 7a 10 54 8f 08 	vmovss xmm10,DWORD PTR [r15+r9*4+0x8]
  40103e:	c4 42 71 a9 54 24 08 	vfmadd213ss xmm10,xmm1,DWORD PTR [r12+0x8]
  401045:	c4 41 7a 11 54 24 08 	vmovss DWORD PTR [r12+0x8],xmm10
  40104c:	49 83 fe 03          	cmp    r14,0x3
  401050:	0f 84 24 fb ff ff    	je     400b7a <matmul_kernel+0x1fa>
  401056:	c4 01 7a 10 5c 8f 0c 	vmovss xmm11,DWORD PTR [r15+r9*4+0xc]
  40105d:	c4 42 71 a9 5c 24 0c 	vfmadd213ss xmm11,xmm1,DWORD PTR [r12+0xc]
  401064:	c4 41 7a 11 5c 24 0c 	vmovss DWORD PTR [r12+0xc],xmm11
  40106b:	49 83 fe 04          	cmp    r14,0x4
  40106f:	0f 84 05 fb ff ff    	je     400b7a <matmul_kernel+0x1fa>
  401075:	c4 01 7a 10 64 8f 10 	vmovss xmm12,DWORD PTR [r15+r9*4+0x10]
  40107c:	c4 42 71 a9 64 24 10 	vfmadd213ss xmm12,xmm1,DWORD PTR [r12+0x10]
  401083:	c4 41 7a 11 64 24 10 	vmovss DWORD PTR [r12+0x10],xmm12
  40108a:	49 83 fe 05          	cmp    r14,0x5
  40108e:	0f 84 e6 fa ff ff    	je     400b7a <matmul_kernel+0x1fa>
  401094:	c4 01 7a 10 6c 8f 14 	vmovss xmm13,DWORD PTR [r15+r9*4+0x14]
  40109b:	c4 42 71 a9 6c 24 14 	vfmadd213ss xmm13,xmm1,DWORD PTR [r12+0x14]
  4010a2:	c4 41 7a 11 6c 24 14 	vmovss DWORD PTR [r12+0x14],xmm13
  4010a9:	49 83 fe 07          	cmp    r14,0x7
  4010ad:	75 71                	jne    401120 <matmul_kernel+0x7a0>
  4010af:	c4 01 7a 10 74 8f 18 	vmovss xmm14,DWORD PTR [r15+r9*4+0x18]
  4010b6:	48 8b 94 24 80 00 00 	mov    rdx,QWORD PTR [rsp+0x80]
  4010bd:	00 
  4010be:	41 ba 07 00 00 00    	mov    r10d,0x7
  4010c4:	c4 42 71 a9 74 24 18 	vfmadd213ss xmm14,xmm1,DWORD PTR [r12+0x18]
  4010cb:	c4 41 7a 11 74 24 18 	vmovss DWORD PTR [r12+0x18],xmm14
  4010d2:	e9 ae fa ff ff       	jmp    400b85 <matmul_kernel+0x205>
  4010d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4010de:	00 00 
  4010e0:	4c 89 e2             	mov    rdx,r12
  4010e3:	45 31 d2             	xor    r10d,r10d
  4010e6:	e9 9a fa ff ff       	jmp    400b85 <matmul_kernel+0x205>
  4010eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4010f0:	c4 81 7a 10 04 8f    	vmovss xmm0,DWORD PTR [r15+r9*4]
  4010f6:	c4 c2 71 a9 04 24    	vfmadd213ss xmm0,xmm1,DWORD PTR [r12]
  4010fc:	c4 c1 7a 11 04 24    	vmovss DWORD PTR [r12],xmm0
  401102:	e9 73 fa ff ff       	jmp    400b7a <matmul_kernel+0x1fa>
  401107:	4d 89 f0             	mov    r8,r14
  40110a:	45 31 d2             	xor    r10d,r10d
  40110d:	c5 f8 28 ea          	vmovaps xmm5,xmm2
  401111:	e9 19 fa ff ff       	jmp    400b2f <matmul_kernel+0x1af>
  401116:	4c 89 d0             	mov    rax,r10
  401119:	31 ff                	xor    edi,edi
  40111b:	e9 7f fc ff ff       	jmp    400d9f <matmul_kernel+0x41f>
  401120:	48 8b 94 24 80 00 00 	mov    rdx,QWORD PTR [rsp+0x80]
  401127:	00 
  401128:	41 ba 06 00 00 00    	mov    r10d,0x6
  40112e:	e9 52 fa ff ff       	jmp    400b85 <matmul_kernel+0x205>
  401133:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40113a:	00 00 00 
  40113d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000401140 <matriz_dimensoes_validas>:
  401140:	48 85 ff             	test   rdi,rdi
  401143:	74 23                	je     401168 <matriz_dimensoes_validas+0x28>
  401145:	48 85 f6             	test   rsi,rsi
  401148:	74 1e                	je     401168 <matriz_dimensoes_validas+0x28>
  40114a:	31 d2                	xor    edx,edx
  40114c:	48 b8 ff ff ff ff ff 	movabs rax,0x3fffffffffffffff
  401153:	ff ff 3f 
  401156:	48 f7 f6             	div    rsi
  401159:	48 39 f8             	cmp    rax,rdi
  40115c:	0f 93 c1             	setae  cl
  40115f:	0f b6 c1             	movzx  eax,cl
  401162:	c3                   	ret
  401163:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  401168:	31 c0                	xor    eax,eax
  40116a:	c3                   	ret
  40116b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401170 <matriz_bytes_payload>:
  401170:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  401174:	48 0f af 47 10       	imul   rax,QWORD PTR [rdi+0x10]
  401179:	48 c1 e0 02          	shl    rax,0x2
  40117d:	c3                   	ret
  40117e:	66 90                	xchg   ax,ax

0000000000401180 <matriz_alocar>:
  401180:	48 83 ec 38          	sub    rsp,0x38
  401184:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
  401188:	48 89 5c 24 18       	mov    QWORD PTR [rsp+0x18],rbx
  40118d:	48 89 d3             	mov    rbx,rdx
  401190:	4c 89 64 24 28       	mov    QWORD PTR [rsp+0x28],r12
  401195:	49 89 f4             	mov    r12,rsi
  401198:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
  40119f:	c5 fa 7f 47 08       	vmovdqu XMMWORD PTR [rdi+0x8],xmm0
  4011a4:	48 85 f6             	test   rsi,rsi
  4011a7:	0f 84 83 00 00 00    	je     401230 <matriz_alocar+0xb0>
  4011ad:	48 85 d2             	test   rdx,rdx
  4011b0:	74 7e                	je     401230 <matriz_alocar+0xb0>
  4011b2:	48 b8 ff ff ff ff ff 	movabs rax,0x3fffffffffffffff
  4011b9:	ff ff 3f 
  4011bc:	31 d2                	xor    edx,edx
  4011be:	48 f7 f3             	div    rbx
  4011c1:	48 39 f0             	cmp    rax,rsi
  4011c4:	72 6a                	jb     401230 <matriz_alocar+0xb0>
  4011c6:	48 89 f1             	mov    rcx,rsi
  4011c9:	48 89 6c 24 20       	mov    QWORD PTR [rsp+0x20],rbp
  4011ce:	be 40 00 00 00       	mov    esi,0x40
  4011d3:	48 89 fd             	mov    rbp,rdi
  4011d6:	48 0f af cb          	imul   rcx,rbx
  4011da:	48 8d 7c 24 08       	lea    rdi,[rsp+0x8]
  4011df:	4c 89 74 24 30       	mov    QWORD PTR [rsp+0x30],r14
  4011e4:	48 c7 44 24 08 00 00 	mov    QWORD PTR [rsp+0x8],0x0
  4011eb:	00 00 
  4011ed:	48 8d 14 8d 00 00 00 	lea    rdx,[rcx*4+0x0]
  4011f4:	00 
  4011f5:	4c 8d 34 8d 00 00 00 	lea    r14,[rcx*4+0x0]
  4011fc:	00 
  4011fd:	e8 2e f2 ff ff       	call   400430 <posix_memalign@plt>
  401202:	85 c0                	test   eax,eax
  401204:	75 57                	jne    40125d <matriz_alocar+0xdd>
  401206:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
  40120b:	4c 8b 74 24 30       	mov    r14,QWORD PTR [rsp+0x30]
  401210:	4c 89 65 08          	mov    QWORD PTR [rbp+0x8],r12
  401214:	48 89 5d 10          	mov    QWORD PTR [rbp+0x10],rbx
  401218:	4c 8b 64 24 28       	mov    r12,QWORD PTR [rsp+0x28]
  40121d:	48 89 75 00          	mov    QWORD PTR [rbp+0x0],rsi
  401221:	48 8b 5c 24 18       	mov    rbx,QWORD PTR [rsp+0x18]
  401226:	48 8b 6c 24 20       	mov    rbp,QWORD PTR [rsp+0x20]
  40122b:	48 83 c4 38          	add    rsp,0x38
  40122f:	c3                   	ret
  401230:	48 8b 3d 49 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2e49]        # 404080 <stderr@GLIBC_2.2.5>
  401237:	48 89 d9             	mov    rcx,rbx
  40123a:	4c 89 e2             	mov    rdx,r12
  40123d:	be e0 25 40 00       	mov    esi,0x4025e0
  401242:	31 c0                	xor    eax,eax
  401244:	e8 97 f1 ff ff       	call   4003e0 <fprintf@plt>
  401249:	48 8b 5c 24 18       	mov    rbx,QWORD PTR [rsp+0x18]
  40124e:	4c 8b 64 24 28       	mov    r12,QWORD PTR [rsp+0x28]
  401253:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401258:	48 83 c4 38          	add    rsp,0x38
  40125c:	c3                   	ret
  40125d:	48 8b 3d 1c 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2e1c]        # 404080 <stderr@GLIBC_2.2.5>
  401264:	4c 89 f2             	mov    rdx,r14
  401267:	49 89 d8             	mov    r8,rbx
  40126a:	4c 89 e1             	mov    rcx,r12
  40126d:	be 10 26 40 00       	mov    esi,0x402610
  401272:	31 c0                	xor    eax,eax
  401274:	e8 67 f1 ff ff       	call   4003e0 <fprintf@plt>
  401279:	48 8b 6c 24 20       	mov    rbp,QWORD PTR [rsp+0x20]
  40127e:	4c 8b 74 24 30       	mov    r14,QWORD PTR [rsp+0x30]
  401283:	eb c4                	jmp    401249 <matriz_alocar+0xc9>
  401285:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40128c:	00 00 00 00 

0000000000401290 <matriz_liberar>:
  401290:	53                   	push   rbx
  401291:	48 89 fb             	mov    rbx,rdi
  401294:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
  401297:	e8 d4 f0 ff ff       	call   400370 <free@plt>
  40129c:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
  4012a3:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
  4012a7:	c5 fa 7f 43 08       	vmovdqu XMMWORD PTR [rbx+0x8],xmm0
  4012ac:	5b                   	pop    rbx
  4012ad:	c3                   	ret
  4012ae:	66 90                	xchg   ax,ax

00000000004012b0 <bin_ler_matriz>:
  4012b0:	48 81 ec d8 00 00 00 	sub    rsp,0xd8
  4012b7:	4c 89 ac 24 c0 00 00 	mov    QWORD PTR [rsp+0xc0],r13
  4012be:	00 
  4012bf:	49 89 f5             	mov    r13,rsi
  4012c2:	be 2a 25 40 00       	mov    esi,0x40252a
  4012c7:	4c 89 b4 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],r14
  4012ce:	00 
  4012cf:	49 89 fe             	mov    r14,rdi
  4012d2:	48 89 ac 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rbp
  4012d9:	00 
  4012da:	e8 31 f1 ff ff       	call   400410 <fopen@plt>
  4012df:	48 85 c0             	test   rax,rax
  4012e2:	0f 84 39 02 00 00    	je     401521 <bin_ler_matriz+0x271>
  4012e8:	48 89 e7             	mov    rdi,rsp
  4012eb:	48 89 c1             	mov    rcx,rax
  4012ee:	ba 02 00 00 00       	mov    edx,0x2
  4012f3:	be 08 00 00 00       	mov    esi,0x8
  4012f8:	48 89 9c 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rbx
  4012ff:	00 
  401300:	48 89 c3             	mov    rbx,rax
  401303:	e8 88 f0 ff ff       	call   400390 <fread@plt>
  401308:	48 83 f8 02          	cmp    rax,0x2
  40130c:	0f 85 26 01 00 00    	jne    401438 <bin_ler_matriz+0x188>
  401312:	4c 89 bc 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],r15
  401319:	00 
  40131a:	48 8b 2c 24          	mov    rbp,QWORD PTR [rsp]
  40131e:	4c 8b 7c 24 08       	mov    r15,QWORD PTR [rsp+0x8]
  401323:	48 89 ef             	mov    rdi,rbp
  401326:	4c 89 fe             	mov    rsi,r15
  401329:	e8 12 fe ff ff       	call   401140 <matriz_dimensoes_validas>
  40132e:	85 c0                	test   eax,eax
  401330:	0f 84 72 01 00 00    	je     4014a8 <bin_ler_matriz+0x1f8>
  401336:	48 89 df             	mov    rdi,rbx
  401339:	e8 b2 f0 ff ff       	call   4003f0 <fileno@plt>
  40133e:	48 8d 74 24 10       	lea    rsi,[rsp+0x10]
  401343:	89 c7                	mov    edi,eax
  401345:	e8 06 f1 ff ff       	call   400450 <fstat@plt>
  40134a:	85 c0                	test   eax,eax
  40134c:	0f 85 8d 01 00 00    	jne    4014df <bin_ler_matriz+0x22f>
  401352:	4c 89 a4 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],r12
  401359:	00 
  40135a:	49 89 ec             	mov    r12,rbp
  40135d:	48 8b 4c 24 40       	mov    rcx,QWORD PTR [rsp+0x40]
  401362:	4d 0f af e7          	imul   r12,r15
  401366:	4e 8d 04 a5 10 00 00 	lea    r8,[r12*4+0x10]
  40136d:	00 
  40136e:	4c 39 c1             	cmp    rcx,r8
  401371:	0f 85 e9 00 00 00    	jne    401460 <bin_ler_matriz+0x1b0>
  401377:	48 89 ee             	mov    rsi,rbp
  40137a:	4c 89 fa             	mov    rdx,r15
  40137d:	4c 89 ef             	mov    rdi,r13
  401380:	e8 fb fd ff ff       	call   401180 <matriz_alocar>
  401385:	89 c5                	mov    ebp,eax
  401387:	85 c0                	test   eax,eax
  401389:	0f 85 7f 00 00 00    	jne    40140e <bin_ler_matriz+0x15e>
  40138f:	49 8b 7d 00          	mov    rdi,QWORD PTR [r13+0x0]
  401393:	48 89 d9             	mov    rcx,rbx
  401396:	4c 89 e2             	mov    rdx,r12
  401399:	be 04 00 00 00       	mov    esi,0x4
  40139e:	e8 ed ef ff ff       	call   400390 <fread@plt>
  4013a3:	49 39 c4             	cmp    r12,rax
  4013a6:	75 48                	jne    4013f0 <bin_ler_matriz+0x140>
  4013a8:	48 89 df             	mov    rdi,rbx
  4013ab:	e8 00 f0 ff ff       	call   4003b0 <fclose@plt>
  4013b0:	48 8b 9c 24 a8 00 00 	mov    rbx,QWORD PTR [rsp+0xa8]
  4013b7:	00 
  4013b8:	4c 8b a4 24 b8 00 00 	mov    r12,QWORD PTR [rsp+0xb8]
  4013bf:	00 
  4013c0:	4c 8b bc 24 d0 00 00 	mov    r15,QWORD PTR [rsp+0xd0]
  4013c7:	00 
  4013c8:	89 e8                	mov    eax,ebp
  4013ca:	4c 8b ac 24 c0 00 00 	mov    r13,QWORD PTR [rsp+0xc0]
  4013d1:	00 
  4013d2:	48 8b ac 24 b0 00 00 	mov    rbp,QWORD PTR [rsp+0xb0]
  4013d9:	00 
  4013da:	4c 8b b4 24 c8 00 00 	mov    r14,QWORD PTR [rsp+0xc8]
  4013e1:	00 
  4013e2:	48 81 c4 d8 00 00 00 	add    rsp,0xd8
  4013e9:	c3                   	ret
  4013ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4013f0:	48 8b 3d 89 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2c89]        # 404080 <stderr@GLIBC_2.2.5>
  4013f7:	4c 89 f2             	mov    rdx,r14
  4013fa:	be 38 27 40 00       	mov    esi,0x402738
  4013ff:	31 c0                	xor    eax,eax
  401401:	e8 da ef ff ff       	call   4003e0 <fprintf@plt>
  401406:	4c 89 ef             	mov    rdi,r13
  401409:	e8 82 fe ff ff       	call   401290 <matriz_liberar>
  40140e:	48 89 df             	mov    rdi,rbx
  401411:	e8 9a ef ff ff       	call   4003b0 <fclose@plt>
  401416:	48 8b 9c 24 a8 00 00 	mov    rbx,QWORD PTR [rsp+0xa8]
  40141d:	00 
  40141e:	4c 8b a4 24 b8 00 00 	mov    r12,QWORD PTR [rsp+0xb8]
  401425:	00 
  401426:	4c 8b bc 24 d0 00 00 	mov    r15,QWORD PTR [rsp+0xd0]
  40142d:	00 
  40142e:	bd ff ff ff ff       	mov    ebp,0xffffffff
  401433:	eb 93                	jmp    4013c8 <bin_ler_matriz+0x118>
  401435:	0f 1f 00             	nop    DWORD PTR [rax]
  401438:	48 8b 3d 41 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2c41]        # 404080 <stderr@GLIBC_2.2.5>
  40143f:	4c 89 f2             	mov    rdx,r14
  401442:	be 70 26 40 00       	mov    esi,0x402670
  401447:	31 c0                	xor    eax,eax
  401449:	e8 92 ef ff ff       	call   4003e0 <fprintf@plt>
  40144e:	48 89 df             	mov    rdi,rbx
  401451:	e8 5a ef ff ff       	call   4003b0 <fclose@plt>
  401456:	48 8b 9c 24 a8 00 00 	mov    rbx,QWORD PTR [rsp+0xa8]
  40145d:	00 
  40145e:	eb ce                	jmp    40142e <bin_ler_matriz+0x17e>
  401460:	48 83 ec 08          	sub    rsp,0x8
  401464:	48 8b 3d 15 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2c15]        # 404080 <stderr@GLIBC_2.2.5>
  40146b:	4c 89 f2             	mov    rdx,r14
  40146e:	49 89 e9             	mov    r9,rbp
  401471:	41 57                	push   r15
  401473:	be 00 27 40 00       	mov    esi,0x402700
  401478:	31 c0                	xor    eax,eax
  40147a:	e8 61 ef ff ff       	call   4003e0 <fprintf@plt>
  40147f:	48 89 df             	mov    rdi,rbx
  401482:	e8 29 ef ff ff       	call   4003b0 <fclose@plt>
  401487:	58                   	pop    rax
  401488:	5a                   	pop    rdx
  401489:	48 8b 9c 24 a8 00 00 	mov    rbx,QWORD PTR [rsp+0xa8]
  401490:	00 
  401491:	4c 8b a4 24 b8 00 00 	mov    r12,QWORD PTR [rsp+0xb8]
  401498:	00 
  401499:	4c 8b bc 24 d0 00 00 	mov    r15,QWORD PTR [rsp+0xd0]
  4014a0:	00 
  4014a1:	eb 8b                	jmp    40142e <bin_ler_matriz+0x17e>
  4014a3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4014a8:	48 8b 3d d1 2b 00 00 	mov    rdi,QWORD PTR [rip+0x2bd1]        # 404080 <stderr@GLIBC_2.2.5>
  4014af:	4d 89 f8             	mov    r8,r15
  4014b2:	48 89 e9             	mov    rcx,rbp
  4014b5:	4c 89 f2             	mov    rdx,r14
  4014b8:	be a8 26 40 00       	mov    esi,0x4026a8
  4014bd:	e8 1e ef ff ff       	call   4003e0 <fprintf@plt>
  4014c2:	48 89 df             	mov    rdi,rbx
  4014c5:	e8 e6 ee ff ff       	call   4003b0 <fclose@plt>
  4014ca:	48 8b 9c 24 a8 00 00 	mov    rbx,QWORD PTR [rsp+0xa8]
  4014d1:	00 
  4014d2:	4c 8b bc 24 d0 00 00 	mov    r15,QWORD PTR [rsp+0xd0]
  4014d9:	00 
  4014da:	e9 4f ff ff ff       	jmp    40142e <bin_ler_matriz+0x17e>
  4014df:	e8 9c ee ff ff       	call   400380 <__errno_location@plt>
  4014e4:	8b 38                	mov    edi,DWORD PTR [rax]
  4014e6:	e8 55 ef ff ff       	call   400440 <strerror@plt>
  4014eb:	48 8b 3d 8e 2b 00 00 	mov    rdi,QWORD PTR [rip+0x2b8e]        # 404080 <stderr@GLIBC_2.2.5>
  4014f2:	4c 89 f2             	mov    rdx,r14
  4014f5:	be e0 26 40 00       	mov    esi,0x4026e0
  4014fa:	48 89 c1             	mov    rcx,rax
  4014fd:	31 c0                	xor    eax,eax
  4014ff:	e8 dc ee ff ff       	call   4003e0 <fprintf@plt>
  401504:	48 89 df             	mov    rdi,rbx
  401507:	e8 a4 ee ff ff       	call   4003b0 <fclose@plt>
  40150c:	48 8b 9c 24 a8 00 00 	mov    rbx,QWORD PTR [rsp+0xa8]
  401513:	00 
  401514:	4c 8b bc 24 d0 00 00 	mov    r15,QWORD PTR [rsp+0xd0]
  40151b:	00 
  40151c:	e9 0d ff ff ff       	jmp    40142e <bin_ler_matriz+0x17e>
  401521:	e8 5a ee ff ff       	call   400380 <__errno_location@plt>
  401526:	8b 38                	mov    edi,DWORD PTR [rax]
  401528:	e8 13 ef ff ff       	call   400440 <strerror@plt>
  40152d:	48 8b 3d 4c 2b 00 00 	mov    rdi,QWORD PTR [rip+0x2b4c]        # 404080 <stderr@GLIBC_2.2.5>
  401534:	4c 89 f2             	mov    rdx,r14
  401537:	be 48 26 40 00       	mov    esi,0x402648
  40153c:	48 89 c1             	mov    rcx,rax
  40153f:	31 c0                	xor    eax,eax
  401541:	e8 9a ee ff ff       	call   4003e0 <fprintf@plt>
  401546:	e9 e3 fe ff ff       	jmp    40142e <bin_ler_matriz+0x17e>
  40154b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401550 <bin_escrever_matriz>:
  401550:	48 83 ec 38          	sub    rsp,0x38
  401554:	48 89 6c 24 20       	mov    QWORD PTR [rsp+0x20],rbp
  401559:	48 89 f5             	mov    rbp,rsi
  40155c:	be 2d 25 40 00       	mov    esi,0x40252d
  401561:	4c 89 6c 24 30       	mov    QWORD PTR [rsp+0x30],r13
  401566:	49 89 fd             	mov    r13,rdi
  401569:	e8 a2 ee ff ff       	call   400410 <fopen@plt>
  40156e:	48 85 c0             	test   rax,rax
  401571:	0f 84 04 01 00 00    	je     40167b <bin_escrever_matriz+0x12b>
  401577:	c5 fa 6f 45 08       	vmovdqu xmm0,XMMWORD PTR [rbp+0x8]
  40157c:	48 89 e7             	mov    rdi,rsp
  40157f:	48 89 c1             	mov    rcx,rax
  401582:	ba 02 00 00 00       	mov    edx,0x2
  401587:	be 08 00 00 00       	mov    esi,0x8
  40158c:	48 89 5c 24 18       	mov    QWORD PTR [rsp+0x18],rbx
  401591:	48 89 c3             	mov    rbx,rax
  401594:	c5 f9 7f 04 24       	vmovdqa XMMWORD PTR [rsp],xmm0
  401599:	e8 82 ee ff ff       	call   400420 <fwrite@plt>
  40159e:	48 83 f8 02          	cmp    rax,0x2
  4015a2:	75 4c                	jne    4015f0 <bin_escrever_matriz+0xa0>
  4015a4:	4c 89 64 24 28       	mov    QWORD PTR [rsp+0x28],r12
  4015a9:	4c 8b 65 08          	mov    r12,QWORD PTR [rbp+0x8]
  4015ad:	48 89 d9             	mov    rcx,rbx
  4015b0:	be 04 00 00 00       	mov    esi,0x4
  4015b5:	48 8b 7d 00          	mov    rdi,QWORD PTR [rbp+0x0]
  4015b9:	4c 0f af 65 10       	imul   r12,QWORD PTR [rbp+0x10]
  4015be:	4c 89 e2             	mov    rdx,r12
  4015c1:	e8 5a ee ff ff       	call   400420 <fwrite@plt>
  4015c6:	4c 39 e0             	cmp    rax,r12
  4015c9:	75 55                	jne    401620 <bin_escrever_matriz+0xd0>
  4015cb:	48 89 df             	mov    rdi,rbx
  4015ce:	e8 dd ed ff ff       	call   4003b0 <fclose@plt>
  4015d3:	85 c0                	test   eax,eax
  4015d5:	75 73                	jne    40164a <bin_escrever_matriz+0xfa>
  4015d7:	48 8b 5c 24 18       	mov    rbx,QWORD PTR [rsp+0x18]
  4015dc:	4c 8b 64 24 28       	mov    r12,QWORD PTR [rsp+0x28]
  4015e1:	48 8b 6c 24 20       	mov    rbp,QWORD PTR [rsp+0x20]
  4015e6:	4c 8b 6c 24 30       	mov    r13,QWORD PTR [rsp+0x30]
  4015eb:	48 83 c4 38          	add    rsp,0x38
  4015ef:	c3                   	ret
  4015f0:	48 8b 3d 89 2a 00 00 	mov    rdi,QWORD PTR [rip+0x2a89]        # 404080 <stderr@GLIBC_2.2.5>
  4015f7:	4c 89 ea             	mov    rdx,r13
  4015fa:	be 88 27 40 00       	mov    esi,0x402788
  4015ff:	31 c0                	xor    eax,eax
  401601:	e8 da ed ff ff       	call   4003e0 <fprintf@plt>
  401606:	48 89 df             	mov    rdi,rbx
  401609:	e8 a2 ed ff ff       	call   4003b0 <fclose@plt>
  40160e:	48 8b 5c 24 18       	mov    rbx,QWORD PTR [rsp+0x18]
  401613:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401618:	eb c7                	jmp    4015e1 <bin_escrever_matriz+0x91>
  40161a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  401620:	48 8b 3d 59 2a 00 00 	mov    rdi,QWORD PTR [rip+0x2a59]        # 404080 <stderr@GLIBC_2.2.5>
  401627:	4c 89 ea             	mov    rdx,r13
  40162a:	be b8 27 40 00       	mov    esi,0x4027b8
  40162f:	31 c0                	xor    eax,eax
  401631:	e8 aa ed ff ff       	call   4003e0 <fprintf@plt>
  401636:	48 89 df             	mov    rdi,rbx
  401639:	e8 72 ed ff ff       	call   4003b0 <fclose@plt>
  40163e:	48 8b 5c 24 18       	mov    rbx,QWORD PTR [rsp+0x18]
  401643:	4c 8b 64 24 28       	mov    r12,QWORD PTR [rsp+0x28]
  401648:	eb c9                	jmp    401613 <bin_escrever_matriz+0xc3>
  40164a:	e8 31 ed ff ff       	call   400380 <__errno_location@plt>
  40164f:	8b 38                	mov    edi,DWORD PTR [rax]
  401651:	e8 ea ed ff ff       	call   400440 <strerror@plt>
  401656:	48 8b 3d 23 2a 00 00 	mov    rdi,QWORD PTR [rip+0x2a23]        # 404080 <stderr@GLIBC_2.2.5>
  40165d:	4c 89 ea             	mov    rdx,r13
  401660:	be e8 27 40 00       	mov    esi,0x4027e8
  401665:	48 89 c1             	mov    rcx,rax
  401668:	31 c0                	xor    eax,eax
  40166a:	e8 71 ed ff ff       	call   4003e0 <fprintf@plt>
  40166f:	48 8b 5c 24 18       	mov    rbx,QWORD PTR [rsp+0x18]
  401674:	4c 8b 64 24 28       	mov    r12,QWORD PTR [rsp+0x28]
  401679:	eb 98                	jmp    401613 <bin_escrever_matriz+0xc3>
  40167b:	e8 00 ed ff ff       	call   400380 <__errno_location@plt>
  401680:	8b 38                	mov    edi,DWORD PTR [rax]
  401682:	e8 b9 ed ff ff       	call   400440 <strerror@plt>
  401687:	48 8b 3d f2 29 00 00 	mov    rdi,QWORD PTR [rip+0x29f2]        # 404080 <stderr@GLIBC_2.2.5>
  40168e:	4c 89 ea             	mov    rdx,r13
  401691:	be 60 27 40 00       	mov    esi,0x402760
  401696:	48 89 c1             	mov    rcx,rax
  401699:	31 c0                	xor    eax,eax
  40169b:	e8 40 ed ff ff       	call   4003e0 <fprintf@plt>
  4016a0:	e9 6e ff ff ff       	jmp    401613 <bin_escrever_matriz+0xc3>
  4016a5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4016ac:	00 00 00 00 

00000000004016b0 <bin_escrever_bloco>:
  4016b0:	48 83 ec 28          	sub    rsp,0x28
  4016b4:	4c 89 6c 24 20       	mov    QWORD PTR [rsp+0x20],r13
  4016b9:	49 89 f5             	mov    r13,rsi
  4016bc:	be 2d 25 40 00       	mov    esi,0x40252d
  4016c1:	48 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],rbp
  4016c6:	48 89 d5             	mov    rbp,rdx
  4016c9:	4c 89 64 24 18       	mov    QWORD PTR [rsp+0x18],r12
  4016ce:	49 89 fc             	mov    r12,rdi
  4016d1:	e8 3a ed ff ff       	call   400410 <fopen@plt>
  4016d6:	48 85 c0             	test   rax,rax
  4016d9:	0f 84 a2 00 00 00    	je     401781 <bin_escrever_bloco+0xd1>
  4016df:	48 89 c1             	mov    rcx,rax
  4016e2:	48 89 ea             	mov    rdx,rbp
  4016e5:	be 01 00 00 00       	mov    esi,0x1
  4016ea:	4c 89 ef             	mov    rdi,r13
  4016ed:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  4016f2:	48 89 c3             	mov    rbx,rax
  4016f5:	e8 26 ed ff ff       	call   400420 <fwrite@plt>
  4016fa:	48 39 e8             	cmp    rax,rbp
  4016fd:	75 29                	jne    401728 <bin_escrever_bloco+0x78>
  4016ff:	48 89 df             	mov    rdi,rbx
  401702:	e8 a9 ec ff ff       	call   4003b0 <fclose@plt>
  401707:	85 c0                	test   eax,eax
  401709:	75 4a                	jne    401755 <bin_escrever_bloco+0xa5>
  40170b:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  401710:	48 8b 6c 24 10       	mov    rbp,QWORD PTR [rsp+0x10]
  401715:	4c 8b 64 24 18       	mov    r12,QWORD PTR [rsp+0x18]
  40171a:	4c 8b 6c 24 20       	mov    r13,QWORD PTR [rsp+0x20]
  40171f:	48 83 c4 28          	add    rsp,0x28
  401723:	c3                   	ret
  401724:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  401728:	48 8b 3d 51 29 00 00 	mov    rdi,QWORD PTR [rip+0x2951]        # 404080 <stderr@GLIBC_2.2.5>
  40172f:	4c 89 e1             	mov    rcx,r12
  401732:	48 89 ea             	mov    rdx,rbp
  401735:	be 08 28 40 00       	mov    esi,0x402808
  40173a:	31 c0                	xor    eax,eax
  40173c:	e8 9f ec ff ff       	call   4003e0 <fprintf@plt>
  401741:	48 89 df             	mov    rdi,rbx
  401744:	e8 67 ec ff ff       	call   4003b0 <fclose@plt>
  401749:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  40174e:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401753:	eb bb                	jmp    401710 <bin_escrever_bloco+0x60>
  401755:	e8 26 ec ff ff       	call   400380 <__errno_location@plt>
  40175a:	8b 38                	mov    edi,DWORD PTR [rax]
  40175c:	e8 df ec ff ff       	call   400440 <strerror@plt>
  401761:	48 8b 3d 18 29 00 00 	mov    rdi,QWORD PTR [rip+0x2918]        # 404080 <stderr@GLIBC_2.2.5>
  401768:	4c 89 e2             	mov    rdx,r12
  40176b:	be e8 27 40 00       	mov    esi,0x4027e8
  401770:	48 89 c1             	mov    rcx,rax
  401773:	31 c0                	xor    eax,eax
  401775:	e8 66 ec ff ff       	call   4003e0 <fprintf@plt>
  40177a:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  40177f:	eb cd                	jmp    40174e <bin_escrever_bloco+0x9e>
  401781:	e8 fa eb ff ff       	call   400380 <__errno_location@plt>
  401786:	8b 38                	mov    edi,DWORD PTR [rax]
  401788:	e8 b3 ec ff ff       	call   400440 <strerror@plt>
  40178d:	48 8b 3d ec 28 00 00 	mov    rdi,QWORD PTR [rip+0x28ec]        # 404080 <stderr@GLIBC_2.2.5>
  401794:	4c 89 e2             	mov    rdx,r12
  401797:	be 60 27 40 00       	mov    esi,0x402760
  40179c:	48 89 c1             	mov    rcx,rax
  40179f:	31 c0                	xor    eax,eax
  4017a1:	e8 3a ec ff ff       	call   4003e0 <fprintf@plt>
  4017a6:	eb a6                	jmp    40174e <bin_escrever_bloco+0x9e>

Disassembly of section .fini:

00000000004017a8 <_fini>:
  4017a8:	f3 0f 1e fa          	endbr64
  4017ac:	48 83 ec 08          	sub    rsp,0x8
  4017b0:	48 83 c4 08          	add    rsp,0x8
  4017b4:	c3                   	ret
