
maquinas/aluno1/bin/matmul_o3:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .text:

0000000000400a20 <matmul_kernel>:
  400a20:	48 81 ec b8 00 00 00 	sub    rsp,0xb8
  400a27:	4c 8b 57 08          	mov    r10,QWORD PTR [rdi+0x8]
  400a2b:	4c 8b 07             	mov    r8,QWORD PTR [rdi]
  400a2e:	4c 89 ac 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],r13
  400a35:	00 
  400a36:	4c 8b 6e 10          	mov    r13,QWORD PTR [rsi+0x10]
  400a3a:	48 89 9c 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rbx
  400a41:	00 
  400a42:	48 8b 1a             	mov    rbx,QWORD PTR [rdx]
  400a45:	4c 89 d2             	mov    rdx,r10
  400a48:	48 89 ac 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rbp
  400a4f:	00 
  400a50:	4a 8d 2c ad 00 00 00 	lea    rbp,[r13*4+0x0]
  400a57:	00 
  400a58:	48 0f af d5          	imul   rdx,rbp
  400a5c:	4c 89 a4 24 98 00 00 	mov    QWORD PTR [rsp+0x98],r12
  400a63:	00 
  400a64:	4c 8b 67 10          	mov    r12,QWORD PTR [rdi+0x10]
  400a68:	48 89 df             	mov    rdi,rbx
  400a6b:	4c 89 bc 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],r15
  400a72:	00 
  400a73:	4c 8b 3e             	mov    r15,QWORD PTR [rsi]
  400a76:	31 f6                	xor    esi,esi
  400a78:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
  400a7d:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
  400a82:	48 89 5c 24 38       	mov    QWORD PTR [rsp+0x38],rbx
  400a87:	e8 44 f9 ff ff       	call   4003d0 <memset@plt>
  400a8c:	4c 8b 54 24 08       	mov    r10,QWORD PTR [rsp+0x8]
  400a91:	4d 85 d2             	test   r10,r10
  400a94:	0f 84 ad 02 00 00    	je     400d47 <matmul_kernel+0x327>
  400a9a:	4d 85 e4             	test   r12,r12
  400a9d:	0f 84 a4 02 00 00    	je     400d47 <matmul_kernel+0x327>
  400aa3:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
  400aa8:	4c 89 54 24 68       	mov    QWORD PTR [rsp+0x68],r10
  400aad:	31 d2                	xor    edx,edx
  400aaf:	31 c9                	xor    ecx,ecx
  400ab1:	4a 8d 3c a5 00 00 00 	lea    rdi,[r12*4+0x0]
  400ab8:	00 
  400ab9:	4c 89 64 24 70       	mov    QWORD PTR [rsp+0x70],r12
  400abe:	49 8d 04 38          	lea    rax,[r8+rdi*1]
  400ac2:	4c 89 44 24 60       	mov    QWORD PTR [rsp+0x60],r8
  400ac7:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  400acc:	48 c7 44 24 28 00 00 	mov    QWORD PTR [rsp+0x28],0x0
  400ad3:	00 00 
  400ad5:	48 89 7c 24 78       	mov    QWORD PTR [rsp+0x78],rdi
  400ada:	4c 89 b4 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],r14
  400ae1:	00 
  400ae2:	49 89 de             	mov    r14,rbx
  400ae5:	4c 29 fb             	sub    rbx,r15
  400ae8:	48 89 de             	mov    rsi,rbx
  400aeb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400af0:	4d 89 f3             	mov    r11,r14
  400af3:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  400af8:	48 89 74 24 40       	mov    QWORD PTR [rsp+0x40],rsi
  400afd:	49 f7 db             	neg    r11
  400b00:	48 89 4c 24 48       	mov    QWORD PTR [rsp+0x48],rcx
  400b05:	49 c1 eb 02          	shr    r11,0x2
  400b09:	48 8d 1c 90          	lea    rbx,[rax+rdx*4]
  400b0d:	48 89 54 24 50       	mov    QWORD PTR [rsp+0x50],rdx
  400b12:	41 83 e3 07          	and    r11d,0x7
  400b16:	48 89 6c 24 58       	mov    QWORD PTR [rsp+0x58],rbp
  400b1b:	4d 39 eb             	cmp    r11,r13
  400b1e:	4d 0f 47 dd          	cmova  r11,r13
  400b22:	45 31 c9             	xor    r9d,r9d
  400b25:	49 8d 43 ff          	lea    rax,[r11-0x1]
  400b29:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  400b2e:	4b 8d 04 9e          	lea    rax,[r14+r11*4]
  400b32:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  400b37:	48 8d 46 fc          	lea    rax,[rsi-0x4]
  400b3b:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  400b40:	49 8d 43 fc          	lea    rax,[r11-0x4]
  400b44:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  400b49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  400b50:	f3 0f 10 0b          	movss  xmm1,DWORD PTR [rbx]
  400b54:	4a 8d 04 8d 00 00 00 	lea    rax,[r9*4+0x0]
  400b5b:	00 
  400b5c:	4d 8d 24 07          	lea    r12,[r15+rax*1]
  400b60:	0f 28 d9             	movaps xmm3,xmm1
  400b63:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  400b67:	4d 85 db             	test   r11,r11
  400b6a:	0f 84 30 03 00 00    	je     400ea0 <matmul_kernel+0x480>
  400b70:	49 83 fb 01          	cmp    r11,0x1
  400b74:	0f 84 36 03 00 00    	je     400eb0 <matmul_kernel+0x490>
  400b7a:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
  400b7f:	48 29 c2             	sub    rdx,rax
  400b82:	48 83 fa 08          	cmp    rdx,0x8
  400b86:	0f 86 35 02 00 00    	jbe    400dc1 <matmul_kernel+0x3a1>
  400b8c:	48 83 7c 24 20 02    	cmp    QWORD PTR [rsp+0x20],0x2
  400b92:	0f 86 31 03 00 00    	jbe    400ec9 <matmul_kernel+0x4a9>
  400b98:	43 0f 10 24 8f       	movups xmm4,XMMWORD PTR [r15+r9*4]
  400b9d:	0f 28 c3             	movaps xmm0,xmm3
  400ba0:	41 0f 10 2e          	movups xmm5,XMMWORD PTR [r14]
  400ba4:	0f 59 c4             	mulps  xmm0,xmm4
  400ba7:	0f 58 c5             	addps  xmm0,xmm5
  400baa:	41 0f 11 06          	movups XMMWORD PTR [r14],xmm0
  400bae:	49 83 fb 04          	cmp    r11,0x4
  400bb2:	74 62                	je     400c16 <matmul_kernel+0x1f6>
  400bb4:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  400bb9:	48 83 f8 01          	cmp    rax,0x1
  400bbd:	48 89 c1             	mov    rcx,rax
  400bc0:	b8 04 00 00 00       	mov    eax,0x4
  400bc5:	74 39                	je     400c00 <matmul_kernel+0x1e0>
  400bc7:	4a 8d 34 08          	lea    rsi,[rax+r9*1]
  400bcb:	f3 0f 7e d3          	movq   xmm2,xmm3
  400bcf:	48 8b 7c 24 28       	mov    rdi,QWORD PTR [rsp+0x28]
  400bd4:	f3 41 0f 7e 04 b7    	movq   xmm0,QWORD PTR [r15+rsi*4]
  400bda:	48 8d 14 38          	lea    rdx,[rax+rdi*1]
  400bde:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  400be3:	0f 59 c2             	mulps  xmm0,xmm2
  400be6:	f3 0f 7e 14 97       	movq   xmm2,QWORD PTR [rdi+rdx*4]
  400beb:	f3 0f 7e c0          	movq   xmm0,xmm0
  400bef:	0f 58 c2             	addps  xmm0,xmm2
  400bf2:	0f 13 04 97          	movlps QWORD PTR [rdi+rdx*4],xmm0
  400bf6:	48 83 f9 02          	cmp    rcx,0x2
  400bfa:	74 1a                	je     400c16 <matmul_kernel+0x1f6>
  400bfc:	48 83 c0 02          	add    rax,0x2
  400c00:	f3 41 0f 10 04 84    	movss  xmm0,DWORD PTR [r12+rax*4]
  400c06:	f3 0f 59 c1          	mulss  xmm0,xmm1
  400c0a:	f3 41 0f 58 04 86    	addss  xmm0,DWORD PTR [r14+rax*4]
  400c10:	f3 41 0f 11 04 86    	movss  DWORD PTR [r14+rax*4],xmm0
  400c16:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
  400c1b:	4d 89 da             	mov    r10,r11
  400c1e:	4d 39 ea             	cmp    r10,r13
  400c21:	0f 83 c9 00 00 00    	jae    400cf0 <matmul_kernel+0x2d0>
  400c27:	4c 89 e9             	mov    rcx,r13
  400c2a:	4c 29 d1             	sub    rcx,r10
  400c2d:	48 83 f9 01          	cmp    rcx,0x1
  400c31:	0f 84 49 01 00 00    	je     400d80 <matmul_kernel+0x360>
  400c37:	4b 8d 2c 0a          	lea    rbp,[r10+r9*1]
  400c3b:	48 89 d0             	mov    rax,rdx
  400c3e:	49 8d 74 af 04       	lea    rsi,[r15+rbp*4+0x4]
  400c43:	48 29 f0             	sub    rax,rsi
  400c46:	48 83 f8 08          	cmp    rax,0x8
  400c4a:	0f 86 30 01 00 00    	jbe    400d80 <matmul_kernel+0x360>
  400c50:	48 8d 41 ff          	lea    rax,[rcx-0x1]
  400c54:	48 83 f8 02          	cmp    rax,0x2
  400c58:	0f 86 75 02 00 00    	jbe    400ed3 <matmul_kernel+0x4b3>
  400c5e:	48 89 ce             	mov    rsi,rcx
  400c61:	4d 8d 04 af          	lea    r8,[r15+rbp*4]
  400c65:	0f 28 d3             	movaps xmm2,xmm3
  400c68:	31 c0                	xor    eax,eax
  400c6a:	48 c1 ee 02          	shr    rsi,0x2
  400c6e:	48 89 f7             	mov    rdi,rsi
  400c71:	48 c1 e7 04          	shl    rdi,0x4
  400c75:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  400c7c:	00 00 00 00 
  400c80:	41 0f 10 04 00       	movups xmm0,XMMWORD PTR [r8+rax*1]
  400c85:	0f 59 c2             	mulps  xmm0,xmm2
  400c88:	0f 58 04 02          	addps  xmm0,XMMWORD PTR [rdx+rax*1]
  400c8c:	0f 29 04 02          	movaps XMMWORD PTR [rdx+rax*1],xmm0
  400c90:	48 83 c0 10          	add    rax,0x10
  400c94:	48 39 f8             	cmp    rax,rdi
  400c97:	75 e7                	jne    400c80 <matmul_kernel+0x260>
  400c99:	48 c1 e6 02          	shl    rsi,0x2
  400c9d:	48 39 ce             	cmp    rsi,rcx
  400ca0:	74 4e                	je     400cf0 <matmul_kernel+0x2d0>
  400ca2:	48 29 f1             	sub    rcx,rsi
  400ca5:	49 01 f2             	add    r10,rsi
  400ca8:	48 83 f9 01          	cmp    rcx,0x1
  400cac:	74 32                	je     400ce0 <matmul_kernel+0x2c0>
  400cae:	48 01 f5             	add    rbp,rsi
  400cb1:	f3 0f 7e db          	movq   xmm3,xmm3
  400cb5:	f3 0f 7e 14 b2       	movq   xmm2,QWORD PTR [rdx+rsi*4]
  400cba:	48 89 c8             	mov    rax,rcx
  400cbd:	f3 41 0f 7e 04 af    	movq   xmm0,QWORD PTR [r15+rbp*4]
  400cc3:	48 83 e0 fe          	and    rax,0xfffffffffffffffe
  400cc7:	83 e1 01             	and    ecx,0x1
  400cca:	0f 59 c3             	mulps  xmm0,xmm3
  400ccd:	f3 0f 7e c0          	movq   xmm0,xmm0
  400cd1:	0f 58 c2             	addps  xmm0,xmm2
  400cd4:	0f 13 04 b2          	movlps QWORD PTR [rdx+rsi*4],xmm0
  400cd8:	74 16                	je     400cf0 <matmul_kernel+0x2d0>
  400cda:	49 01 c2             	add    r10,rax
  400cdd:	48 01 c6             	add    rsi,rax
  400ce0:	f3 43 0f 59 0c 94    	mulss  xmm1,DWORD PTR [r12+r10*4]
  400ce6:	f3 0f 58 0c b2       	addss  xmm1,DWORD PTR [rdx+rsi*4]
  400ceb:	f3 0f 11 0c b2       	movss  DWORD PTR [rdx+rsi*4],xmm1
  400cf0:	48 83 c3 04          	add    rbx,0x4
  400cf4:	4d 01 e9             	add    r9,r13
  400cf7:	48 39 5c 24 08       	cmp    QWORD PTR [rsp+0x8],rbx
  400cfc:	0f 85 4e fe ff ff    	jne    400b50 <matmul_kernel+0x130>
  400d02:	48 8b 6c 24 58       	mov    rbp,QWORD PTR [rsp+0x58]
  400d07:	48 8b 74 24 40       	mov    rsi,QWORD PTR [rsp+0x40]
  400d0c:	48 8b 4c 24 48       	mov    rcx,QWORD PTR [rsp+0x48]
  400d11:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
  400d16:	48 8b 5c 24 78       	mov    rbx,QWORD PTR [rsp+0x78]
  400d1b:	4c 01 6c 24 28       	add    QWORD PTR [rsp+0x28],r13
  400d20:	49 01 ee             	add    r14,rbp
  400d23:	48 01 ee             	add    rsi,rbp
  400d26:	48 01 5c 24 08       	add    QWORD PTR [rsp+0x8],rbx
  400d2b:	48 83 c1 01          	add    rcx,0x1
  400d2f:	48 03 54 24 70       	add    rdx,QWORD PTR [rsp+0x70]
  400d34:	48 39 4c 24 68       	cmp    QWORD PTR [rsp+0x68],rcx
  400d39:	0f 85 b1 fd ff ff    	jne    400af0 <matmul_kernel+0xd0>
  400d3f:	4c 8b b4 24 a8 00 00 	mov    r14,QWORD PTR [rsp+0xa8]
  400d46:	00 
  400d47:	48 8b 9c 24 88 00 00 	mov    rbx,QWORD PTR [rsp+0x88]
  400d4e:	00 
  400d4f:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  400d56:	00 
  400d57:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  400d5e:	00 
  400d5f:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  400d66:	00 
  400d67:	4c 8b bc 24 b0 00 00 	mov    r15,QWORD PTR [rsp+0xb0]
  400d6e:	00 
  400d6f:	48 81 c4 b8 00 00 00 	add    rsp,0xb8
  400d76:	c3                   	ret
  400d77:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  400d7e:	00 00 
  400d80:	4b 8d 34 94          	lea    rsi,[r12+r10*4]
  400d84:	31 c0                	xor    eax,eax
  400d86:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400d8a:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  400d91:	00 00 00 00 
  400d95:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  400d9c:	00 00 00 00 
  400da0:	f3 0f 10 04 86       	movss  xmm0,DWORD PTR [rsi+rax*4]
  400da5:	f3 0f 59 c1          	mulss  xmm0,xmm1
  400da9:	f3 0f 58 04 82       	addss  xmm0,DWORD PTR [rdx+rax*4]
  400dae:	f3 0f 11 04 82       	movss  DWORD PTR [rdx+rax*4],xmm0
  400db3:	48 83 c0 01          	add    rax,0x1
  400db7:	48 39 c8             	cmp    rax,rcx
  400dba:	75 e4                	jne    400da0 <matmul_kernel+0x380>
  400dbc:	e9 2f ff ff ff       	jmp    400cf0 <matmul_kernel+0x2d0>
  400dc1:	f3 43 0f 10 04 8f    	movss  xmm0,DWORD PTR [r15+r9*4]
  400dc7:	f3 0f 59 c1          	mulss  xmm0,xmm1
  400dcb:	f3 41 0f 58 06       	addss  xmm0,DWORD PTR [r14]
  400dd0:	f3 41 0f 11 06       	movss  DWORD PTR [r14],xmm0
  400dd5:	f3 43 0f 10 44 8f 04 	movss  xmm0,DWORD PTR [r15+r9*4+0x4]
  400ddc:	f3 0f 59 c1          	mulss  xmm0,xmm1
  400de0:	f3 41 0f 58 46 04    	addss  xmm0,DWORD PTR [r14+0x4]
  400de6:	f3 41 0f 11 46 04    	movss  DWORD PTR [r14+0x4],xmm0
  400dec:	49 83 fb 02          	cmp    r11,0x2
  400df0:	0f 84 20 fe ff ff    	je     400c16 <matmul_kernel+0x1f6>
  400df6:	f3 43 0f 10 44 8f 08 	movss  xmm0,DWORD PTR [r15+r9*4+0x8]
  400dfd:	f3 0f 59 c1          	mulss  xmm0,xmm1
  400e01:	f3 41 0f 58 46 08    	addss  xmm0,DWORD PTR [r14+0x8]
  400e07:	f3 41 0f 11 46 08    	movss  DWORD PTR [r14+0x8],xmm0
  400e0d:	49 83 fb 03          	cmp    r11,0x3
  400e11:	0f 84 ff fd ff ff    	je     400c16 <matmul_kernel+0x1f6>
  400e17:	f3 43 0f 10 44 8f 0c 	movss  xmm0,DWORD PTR [r15+r9*4+0xc]
  400e1e:	f3 0f 59 c1          	mulss  xmm0,xmm1
  400e22:	f3 41 0f 58 46 0c    	addss  xmm0,DWORD PTR [r14+0xc]
  400e28:	f3 41 0f 11 46 0c    	movss  DWORD PTR [r14+0xc],xmm0
  400e2e:	49 83 fb 04          	cmp    r11,0x4
  400e32:	0f 84 de fd ff ff    	je     400c16 <matmul_kernel+0x1f6>
  400e38:	f3 43 0f 10 44 8f 10 	movss  xmm0,DWORD PTR [r15+r9*4+0x10]
  400e3f:	f3 0f 59 c1          	mulss  xmm0,xmm1
  400e43:	f3 41 0f 58 46 10    	addss  xmm0,DWORD PTR [r14+0x10]
  400e49:	f3 41 0f 11 46 10    	movss  DWORD PTR [r14+0x10],xmm0
  400e4f:	49 83 fb 05          	cmp    r11,0x5
  400e53:	0f 84 bd fd ff ff    	je     400c16 <matmul_kernel+0x1f6>
  400e59:	f3 43 0f 10 44 8f 14 	movss  xmm0,DWORD PTR [r15+r9*4+0x14]
  400e60:	f3 0f 59 c1          	mulss  xmm0,xmm1
  400e64:	f3 41 0f 58 46 14    	addss  xmm0,DWORD PTR [r14+0x14]
  400e6a:	f3 41 0f 11 46 14    	movss  DWORD PTR [r14+0x14],xmm0
  400e70:	49 83 fb 07          	cmp    r11,0x7
  400e74:	75 64                	jne    400eda <matmul_kernel+0x4ba>
  400e76:	f3 43 0f 10 44 8f 18 	movss  xmm0,DWORD PTR [r15+r9*4+0x18]
  400e7d:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
  400e82:	41 ba 07 00 00 00    	mov    r10d,0x7
  400e88:	f3 0f 59 c1          	mulss  xmm0,xmm1
  400e8c:	f3 41 0f 58 46 18    	addss  xmm0,DWORD PTR [r14+0x18]
  400e92:	f3 41 0f 11 46 18    	movss  DWORD PTR [r14+0x18],xmm0
  400e98:	e9 81 fd ff ff       	jmp    400c1e <matmul_kernel+0x1fe>
  400e9d:	0f 1f 00             	nop    DWORD PTR [rax]
  400ea0:	4c 89 f2             	mov    rdx,r14
  400ea3:	45 31 d2             	xor    r10d,r10d
  400ea6:	e9 73 fd ff ff       	jmp    400c1e <matmul_kernel+0x1fe>
  400eab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400eb0:	f3 43 0f 10 04 8f    	movss  xmm0,DWORD PTR [r15+r9*4]
  400eb6:	f3 0f 59 c1          	mulss  xmm0,xmm1
  400eba:	f3 41 0f 58 06       	addss  xmm0,DWORD PTR [r14]
  400ebf:	f3 41 0f 11 06       	movss  DWORD PTR [r14],xmm0
  400ec4:	e9 4d fd ff ff       	jmp    400c16 <matmul_kernel+0x1f6>
  400ec9:	4c 89 d9             	mov    rcx,r11
  400ecc:	31 c0                	xor    eax,eax
  400ece:	e9 f4 fc ff ff       	jmp    400bc7 <matmul_kernel+0x1a7>
  400ed3:	31 f6                	xor    esi,esi
  400ed5:	e9 d4 fd ff ff       	jmp    400cae <matmul_kernel+0x28e>
  400eda:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
  400edf:	41 ba 06 00 00 00    	mov    r10d,0x6
  400ee5:	e9 34 fd ff ff       	jmp    400c1e <matmul_kernel+0x1fe>

Disassembly of section .fini:
