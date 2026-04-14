
x86-64/multiply_accumulate_x86-64-O3.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <multiply_accumulate(double const*, double const*, unsigned long)>:
   0:	48 85 d2             	test   rdx,rdx
   3:	74 7b                	je     80 <multiply_accumulate(double const*, double const*, unsigned long)+0x80>
   5:	48 83 fa 01          	cmp    rdx,0x1
   9:	74 7a                	je     85 <multiply_accumulate(double const*, double const*, unsigned long)+0x85>
   b:	48 89 d1             	mov    rcx,rdx
   e:	31 c0                	xor    eax,eax
  10:	66 0f ef c0          	pxor   xmm0,xmm0
  14:	48 d1 e9             	shr    rcx,1
  17:	48 c1 e1 04          	shl    rcx,0x4
  1b:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  22:	00 00 00 00 
  26:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  2d:	00 00 00 00 
  31:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  38:	00 00 00 00 
  3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  40:	66 0f 10 0c 07       	movupd xmm1,XMMWORD PTR [rdi+rax*1]
  45:	66 0f 10 1c 06       	movupd xmm3,XMMWORD PTR [rsi+rax*1]
  4a:	48 83 c0 10          	add    rax,0x10
  4e:	66 0f 59 cb          	mulpd  xmm1,xmm3
  52:	f2 0f 58 c1          	addsd  xmm0,xmm1
  56:	66 0f 15 c9          	unpckhpd xmm1,xmm1
  5a:	f2 0f 58 c1          	addsd  xmm0,xmm1
  5e:	48 39 c8             	cmp    rax,rcx
  61:	75 dd                	jne    40 <multiply_accumulate(double const*, double const*, unsigned long)+0x40>
  63:	f6 c2 01             	test   dl,0x1
  66:	74 1c                	je     84 <multiply_accumulate(double const*, double const*, unsigned long)+0x84>
  68:	48 83 e2 fe          	and    rdx,0xfffffffffffffffe
  6c:	f2 0f 10 0c d6       	movsd  xmm1,QWORD PTR [rsi+rdx*8]
  71:	f2 0f 59 0c d7       	mulsd  xmm1,QWORD PTR [rdi+rdx*8]
  76:	f2 0f 58 c1          	addsd  xmm0,xmm1
  7a:	c3                   	ret
  7b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  80:	66 0f ef c0          	pxor   xmm0,xmm0
  84:	c3                   	ret
  85:	31 d2                	xor    edx,edx
  87:	66 0f ef c0          	pxor   xmm0,xmm0
  8b:	eb df                	jmp    6c <multiply_accumulate(double const*, double const*, unsigned long)+0x6c>
