
default/multiply_accumulate_default-O0.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <multiply_accumulate(double const*, double const*, unsigned long)>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
   8:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
   c:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  10:	66 0f ef c0          	pxor   xmm0,xmm0
  14:	f2 0f 11 45 f8       	movsd  QWORD PTR [rbp-0x8],xmm0
  19:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  20:	00 
  21:	eb 45                	jmp    68 <multiply_accumulate(double const*, double const*, unsigned long)+0x68>
  23:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  27:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  2e:	00 
  2f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  33:	48 01 d0             	add    rax,rdx
  36:	f2 0f 10 08          	movsd  xmm1,QWORD PTR [rax]
  3a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  3e:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  45:	00 
  46:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4a:	48 01 d0             	add    rax,rdx
  4d:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  51:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  55:	f2 0f 10 4d f8       	movsd  xmm1,QWORD PTR [rbp-0x8]
  5a:	f2 0f 58 c1          	addsd  xmm0,xmm1
  5e:	f2 0f 11 45 f8       	movsd  QWORD PTR [rbp-0x8],xmm0
  63:	48 83 45 f0 01       	add    QWORD PTR [rbp-0x10],0x1
  68:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  6c:	48 3b 45 d8          	cmp    rax,QWORD PTR [rbp-0x28]
  70:	72 b1                	jb     23 <multiply_accumulate(double const*, double const*, unsigned long)+0x23>
  72:	f2 0f 10 45 f8       	movsd  xmm0,QWORD PTR [rbp-0x8]
  77:	5d                   	pop    rbp
  78:	c3                   	ret
