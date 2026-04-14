
haswell/multiply_accumulate_haswell-Ofast.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <multiply_accumulate(double const*, double const*, unsigned long)>:
   0:	48 89 f9             	mov    rcx,rdi
   3:	48 85 d2             	test   rdx,rdx
   6:	0f 84 ac 00 00 00    	je     b8 <multiply_accumulate(double const*, double const*, unsigned long)+0xb8>
   c:	48 8d 42 ff          	lea    rax,[rdx-0x1]
  10:	48 83 f8 02          	cmp    rax,0x2
  14:	0f 86 a3 00 00 00    	jbe    bd <multiply_accumulate(double const*, double const*, unsigned long)+0xbd>
  1a:	48 89 d7             	mov    rdi,rdx
  1d:	31 c0                	xor    eax,eax
  1f:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  23:	48 c1 ef 02          	shr    rdi,0x2
  27:	48 c1 e7 05          	shl    rdi,0x5
  2b:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  32:	00 00 00 00 
  36:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  3d:	00 00 00 
  40:	c5 fd 10 14 01       	vmovupd ymm2,YMMWORD PTR [rcx+rax*1]
  45:	c4 e2 ed b8 04 06    	vfmadd231pd ymm0,ymm2,YMMWORD PTR [rsi+rax*1]
  4b:	48 83 c0 20          	add    rax,0x20
  4f:	48 39 c7             	cmp    rdi,rax
  52:	75 ec                	jne    40 <multiply_accumulate(double const*, double const*, unsigned long)+0x40>
  54:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  5a:	c5 f1 58 c8          	vaddpd xmm1,xmm1,xmm0
  5e:	c5 f1 15 c1          	vunpckhpd xmm0,xmm1,xmm1
  62:	c5 f9 58 c1          	vaddpd xmm0,xmm0,xmm1
  66:	f6 c2 03             	test   dl,0x3
  69:	74 45                	je     b0 <multiply_accumulate(double const*, double const*, unsigned long)+0xb0>
  6b:	48 89 d0             	mov    rax,rdx
  6e:	48 83 e0 fc          	and    rax,0xfffffffffffffffc
  72:	c5 f8 77             	vzeroupper
  75:	48 29 c2             	sub    rdx,rax
  78:	48 83 fa 01          	cmp    rdx,0x1
  7c:	74 1f                	je     9d <multiply_accumulate(double const*, double const*, unsigned long)+0x9d>
  7e:	c5 f9 10 1c c1       	vmovupd xmm3,XMMWORD PTR [rcx+rax*8]
  83:	c4 e2 e1 b8 0c c6    	vfmadd231pd xmm1,xmm3,XMMWORD PTR [rsi+rax*8]
  89:	c5 f1 15 c1          	vunpckhpd xmm0,xmm1,xmm1
  8d:	c5 f9 58 c1          	vaddpd xmm0,xmm0,xmm1
  91:	f6 c2 01             	test   dl,0x1
  94:	74 1d                	je     b3 <multiply_accumulate(double const*, double const*, unsigned long)+0xb3>
  96:	48 83 e2 fe          	and    rdx,0xfffffffffffffffe
  9a:	48 01 d0             	add    rax,rdx
  9d:	c5 fb 10 24 c1       	vmovsd xmm4,QWORD PTR [rcx+rax*8]
  a2:	c4 e2 d9 b9 04 c6    	vfmadd231sd xmm0,xmm4,QWORD PTR [rsi+rax*8]
  a8:	c3                   	ret
  a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  b0:	c5 f8 77             	vzeroupper
  b3:	c3                   	ret
  b4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  b8:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  bc:	c3                   	ret
  bd:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  c1:	31 c0                	xor    eax,eax
  c3:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  c7:	eb ac                	jmp    75 <multiply_accumulate(double const*, double const*, unsigned long)+0x75>
