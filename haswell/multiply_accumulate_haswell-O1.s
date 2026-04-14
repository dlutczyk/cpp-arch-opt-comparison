
haswell/multiply_accumulate_haswell-O1.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <multiply_accumulate(double const*, double const*, unsigned long)>:
   0:	48 85 d2             	test   rdx,rdx
   3:	74 36                	je     3b <multiply_accumulate(double const*, double const*, unsigned long)+0x3b>
   5:	b8 00 00 00 00       	mov    eax,0x0
   a:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
   e:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  15:	00 00 00 00 
  19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  20:	c5 fb 10 04 c7       	vmovsd xmm0,QWORD PTR [rdi+rax*8]
  25:	c5 fb 59 04 c6       	vmulsd xmm0,xmm0,QWORD PTR [rsi+rax*8]
  2a:	c5 f3 58 c8          	vaddsd xmm1,xmm1,xmm0
  2e:	48 ff c0             	inc    rax
  31:	48 39 c2             	cmp    rdx,rax
  34:	75 ea                	jne    20 <multiply_accumulate(double const*, double const*, unsigned long)+0x20>
  36:	c5 f9 28 c1          	vmovapd xmm0,xmm1
  3a:	c3                   	ret
  3b:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  3f:	eb f5                	jmp    36 <multiply_accumulate(double const*, double const*, unsigned long)+0x36>
