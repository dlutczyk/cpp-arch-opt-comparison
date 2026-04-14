
haswell/multiply_accumulate_haswell-O0.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <multiply_accumulate(double const*, double const*, unsigned long)>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
   8:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
   c:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  10:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  14:	c5 fb 11 45 f8       	vmovsd QWORD PTR [rbp-0x8],xmm0
  19:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  20:	00 
  21:	eb 44                	jmp    67 <multiply_accumulate(double const*, double const*, unsigned long)+0x67>
  23:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  27:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  2e:	00 
  2f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  33:	48 01 d0             	add    rax,rdx
  36:	c5 fb 10 08          	vmovsd xmm1,QWORD PTR [rax]
  3a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  3e:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  45:	00 
  46:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4a:	48 01 d0             	add    rax,rdx
  4d:	c5 fb 10 00          	vmovsd xmm0,QWORD PTR [rax]
  51:	c5 f3 59 c0          	vmulsd xmm0,xmm1,xmm0
  55:	c5 fb 10 4d f8       	vmovsd xmm1,QWORD PTR [rbp-0x8]
  5a:	c5 f3 58 c0          	vaddsd xmm0,xmm1,xmm0
  5e:	c5 fb 11 45 f8       	vmovsd QWORD PTR [rbp-0x8],xmm0
  63:	48 ff 45 f0          	inc    QWORD PTR [rbp-0x10]
  67:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  6b:	48 3b 45 d8          	cmp    rax,QWORD PTR [rbp-0x28]
  6f:	72 b2                	jb     23 <multiply_accumulate(double const*, double const*, unsigned long)+0x23>
  71:	c5 fb 10 45 f8       	vmovsd xmm0,QWORD PTR [rbp-0x8]
  76:	5d                   	pop    rbp
  77:	c3                   	ret
