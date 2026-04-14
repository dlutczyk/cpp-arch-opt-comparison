
x86-64/multiply_accumulate_x86-64-O1.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <multiply_accumulate(double const*, double const*, unsigned long)>:
   0:	48 85 d2             	test   rdx,rdx
   3:	74 37                	je     3c <multiply_accumulate(double const*, double const*, unsigned long)+0x3c>
   5:	b8 00 00 00 00       	mov    eax,0x0
   a:	66 0f ef c9          	pxor   xmm1,xmm1
   e:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  15:	00 00 00 00 
  19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  20:	f2 0f 10 04 c7       	movsd  xmm0,QWORD PTR [rdi+rax*8]
  25:	f2 0f 59 04 c6       	mulsd  xmm0,QWORD PTR [rsi+rax*8]
  2a:	f2 0f 58 c8          	addsd  xmm1,xmm0
  2e:	48 83 c0 01          	add    rax,0x1
  32:	48 39 c2             	cmp    rdx,rax
  35:	75 e9                	jne    20 <multiply_accumulate(double const*, double const*, unsigned long)+0x20>
  37:	66 0f 28 c1          	movapd xmm0,xmm1
  3b:	c3                   	ret
  3c:	66 0f ef c9          	pxor   xmm1,xmm1
  40:	eb f5                	jmp    37 <multiply_accumulate(double const*, double const*, unsigned long)+0x37>
