
default/multiply_accumulate_default-Ofast.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <multiply_accumulate(double const*, double const*, unsigned long)>:
   0:	48 85 d2             	test   rdx,rdx
   3:	74 5b                	je     60 <multiply_accumulate(double const*, double const*, unsigned long)+0x60>
   5:	48 83 fa 01          	cmp    rdx,0x1
   9:	74 5a                	je     65 <multiply_accumulate(double const*, double const*, unsigned long)+0x65>
   b:	48 89 d1             	mov    rcx,rdx
   e:	31 c0                	xor    eax,eax
  10:	66 0f ef c9          	pxor   xmm1,xmm1
  14:	48 d1 e9             	shr    rcx,1
  17:	48 c1 e1 04          	shl    rcx,0x4
  1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  20:	66 0f 10 04 07       	movupd xmm0,XMMWORD PTR [rdi+rax*1]
  25:	66 0f 10 14 06       	movupd xmm2,XMMWORD PTR [rsi+rax*1]
  2a:	48 83 c0 10          	add    rax,0x10
  2e:	66 0f 59 c2          	mulpd  xmm0,xmm2
  32:	66 0f 58 c8          	addpd  xmm1,xmm0
  36:	48 39 c8             	cmp    rax,rcx
  39:	75 e5                	jne    20 <multiply_accumulate(double const*, double const*, unsigned long)+0x20>
  3b:	66 0f 28 c1          	movapd xmm0,xmm1
  3f:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  43:	66 0f 58 c1          	addpd  xmm0,xmm1
  47:	f6 c2 01             	test   dl,0x1
  4a:	74 18                	je     64 <multiply_accumulate(double const*, double const*, unsigned long)+0x64>
  4c:	48 83 e2 fe          	and    rdx,0xfffffffffffffffe
  50:	f2 0f 10 0c d6       	movsd  xmm1,QWORD PTR [rsi+rdx*8]
  55:	f2 0f 59 0c d7       	mulsd  xmm1,QWORD PTR [rdi+rdx*8]
  5a:	f2 0f 58 c1          	addsd  xmm0,xmm1
  5e:	c3                   	ret
  5f:	90                   	nop
  60:	66 0f ef c0          	pxor   xmm0,xmm0
  64:	c3                   	ret
  65:	31 d2                	xor    edx,edx
  67:	66 0f ef c0          	pxor   xmm0,xmm0
  6b:	eb e3                	jmp    50 <multiply_accumulate(double const*, double const*, unsigned long)+0x50>
