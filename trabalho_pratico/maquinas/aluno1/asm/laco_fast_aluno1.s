
maquinas/aluno1/bin/matmul_fast:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .text:

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

Disassembly of section .fini:
