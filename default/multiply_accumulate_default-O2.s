
default/multiply_accumulate_default-O2.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <multiply_accumulate(double const*, double const*, unsigned long)>:
   0:	48 85 d2             	test   rdx,rdx
   3:	74 3b                	je     40 <multiply_accumulate(double const*, double const*, unsigned long)+0x40>
   5:	31 c0                	xor    eax,eax
   7:	66 0f ef c9          	pxor   xmm1,xmm1
   b:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  12:	00 00 00 00 
  16:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  1d:	00 00 00 
  20:	f2 0f 10 04 c7       	movsd  xmm0,QWORD PTR [rdi+rax*8]
  25:	f2 0f 59 04 c6       	mulsd  xmm0,QWORD PTR [rsi+rax*8]
  2a:	48 83 c0 01          	add    rax,0x1
  2e:	f2 0f 58 c8          	addsd  xmm1,xmm0
  32:	48 39 c2             	cmp    rdx,rax
  35:	75 e9                	jne    20 <multiply_accumulate(double const*, double const*, unsigned long)+0x20>
  37:	66 0f 28 c1          	movapd xmm0,xmm1
  3b:	c3                   	ret
  3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  40:	66 0f ef c9          	pxor   xmm1,xmm1
  44:	66 0f 28 c1          	movapd xmm0,xmm1
  48:	c3                   	ret
