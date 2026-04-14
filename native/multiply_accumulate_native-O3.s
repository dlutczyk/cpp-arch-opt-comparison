
native/multiply_accumulate_native-O3.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <multiply_accumulate(double const*, double const*, unsigned long)>:
   0:	48 85 d2             	test   rdx,rdx
   3:	0f 84 bf 00 00 00    	je     c8 <multiply_accumulate(double const*, double const*, unsigned long)+0xc8>
   9:	48 8d 42 ff          	lea    rax,[rdx-0x1]
   d:	48 83 f8 02          	cmp    rax,0x2
  11:	0f 86 b6 00 00 00    	jbe    cd <multiply_accumulate(double const*, double const*, unsigned long)+0xcd>
  17:	48 89 d1             	mov    rcx,rdx
  1a:	31 c0                	xor    eax,eax
  1c:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  20:	48 c1 e9 02          	shr    rcx,0x2
  24:	48 c1 e1 05          	shl    rcx,0x5
  28:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  2f:	00 00 00 00 
  33:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  3a:	00 00 00 00 
  3e:	66 90                	xchg   ax,ax
  40:	c5 fd 10 0c 06       	vmovupd ymm1,YMMWORD PTR [rsi+rax*1]
  45:	c5 f5 59 0c 07       	vmulpd ymm1,ymm1,YMMWORD PTR [rdi+rax*1]
  4a:	48 83 c0 20          	add    rax,0x20
  4e:	c5 fb 58 c1          	vaddsd xmm0,xmm0,xmm1
  52:	c5 f1 15 d1          	vunpckhpd xmm2,xmm1,xmm1
  56:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  5c:	c5 fb 58 c2          	vaddsd xmm0,xmm0,xmm2
  60:	c5 fb 58 c1          	vaddsd xmm0,xmm0,xmm1
  64:	c5 f1 15 c9          	vunpckhpd xmm1,xmm1,xmm1
  68:	c5 fb 58 c1          	vaddsd xmm0,xmm0,xmm1
  6c:	48 39 c1             	cmp    rcx,rax
  6f:	75 cf                	jne    40 <multiply_accumulate(double const*, double const*, unsigned long)+0x40>
  71:	f6 c2 03             	test   dl,0x3
  74:	74 4a                	je     c0 <multiply_accumulate(double const*, double const*, unsigned long)+0xc0>
  76:	48 89 d0             	mov    rax,rdx
  79:	48 83 e0 fc          	and    rax,0xfffffffffffffffc
  7d:	c5 f8 77             	vzeroupper
  80:	48 29 c2             	sub    rdx,rax
  83:	48 83 fa 01          	cmp    rdx,0x1
  87:	74 22                	je     ab <multiply_accumulate(double const*, double const*, unsigned long)+0xab>
  89:	c5 f9 10 0c c6       	vmovupd xmm1,XMMWORD PTR [rsi+rax*8]
  8e:	c5 f1 59 0c c7       	vmulpd xmm1,xmm1,XMMWORD PTR [rdi+rax*8]
  93:	c5 fb 58 c1          	vaddsd xmm0,xmm0,xmm1
  97:	c5 f1 15 c9          	vunpckhpd xmm1,xmm1,xmm1
  9b:	c5 f3 58 c0          	vaddsd xmm0,xmm1,xmm0
  9f:	f6 c2 01             	test   dl,0x1
  a2:	74 1f                	je     c3 <multiply_accumulate(double const*, double const*, unsigned long)+0xc3>
  a4:	48 83 e2 fe          	and    rdx,0xfffffffffffffffe
  a8:	48 01 d0             	add    rax,rdx
  ab:	c5 fb 10 24 c7       	vmovsd xmm4,QWORD PTR [rdi+rax*8]
  b0:	c4 e2 d9 b9 04 c6    	vfmadd231sd xmm0,xmm4,QWORD PTR [rsi+rax*8]
  b6:	c3                   	ret
  b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  be:	00 00 
  c0:	c5 f8 77             	vzeroupper
  c3:	c3                   	ret
  c4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  c8:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  cc:	c3                   	ret
  cd:	31 c0                	xor    eax,eax
  cf:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  d3:	eb ab                	jmp    80 <multiply_accumulate(double const*, double const*, unsigned long)+0x80>
