
native/multiply_accumulate_native-O2.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <multiply_accumulate(double const*, double const*, unsigned long)>:
   0:	48 85 d2             	test   rdx,rdx
   3:	74 63                	je     68 <multiply_accumulate(double const*, double const*, unsigned long)+0x68>
   5:	31 c0                	xor    eax,eax
   7:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
   b:	f6 c2 01             	test   dl,0x1
   e:	74 30                	je     40 <multiply_accumulate(double const*, double const*, unsigned long)+0x40>
  10:	c5 fb 10 1f          	vmovsd xmm3,QWORD PTR [rdi]
  14:	b8 01 00 00 00       	mov    eax,0x1
  19:	c4 e2 e1 b9 06       	vfmadd231sd xmm0,xmm3,QWORD PTR [rsi]
  1e:	48 83 fa 01          	cmp    rdx,0x1
  22:	74 49                	je     6d <multiply_accumulate(double const*, double const*, unsigned long)+0x6d>
  24:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  2b:	00 00 00 00 
  2f:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  36:	00 00 00 00 
  3a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  40:	c5 fb 10 0c c7       	vmovsd xmm1,QWORD PTR [rdi+rax*8]
  45:	c4 e2 f1 b9 04 c6    	vfmadd231sd xmm0,xmm1,QWORD PTR [rsi+rax*8]
  4b:	c5 fb 10 54 c7 08    	vmovsd xmm2,QWORD PTR [rdi+rax*8+0x8]
  51:	c4 e2 e9 b9 44 c6 08 	vfmadd231sd xmm0,xmm2,QWORD PTR [rsi+rax*8+0x8]
  58:	48 83 c0 02          	add    rax,0x2
  5c:	48 39 c2             	cmp    rdx,rax
  5f:	75 df                	jne    40 <multiply_accumulate(double const*, double const*, unsigned long)+0x40>
  61:	c3                   	ret
  62:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  68:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  6c:	c3                   	ret
  6d:	c3                   	ret
