
main.o:     file format pe-x86-64


Disassembly of section .text:

0000000000000000 <scanf>:
   0:	55                   	push   %rbp
   1:	53                   	push   %rbx
   2:	48 83 ec 38          	sub    $0x38,%rsp
   6:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  13:	4c 89 45 30          	mov    %r8,0x30(%rbp)
  17:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
  1b:	48 8d 45 28          	lea    0x28(%rbp),%rax
  1f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  23:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
  27:	b9 00 00 00 00       	mov    $0x0,%ecx
  2c:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 33 <scanf+0x33>
  33:	ff d0                	call   *%rax
  35:	49 89 d8             	mov    %rbx,%r8
  38:	48 8b 55 20          	mov    0x20(%rbp),%rdx
  3c:	48 89 c1             	mov    %rax,%rcx
  3f:	e8 00 00 00 00       	call   44 <scanf+0x44>
  44:	89 45 fc             	mov    %eax,-0x4(%rbp)
  47:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4a:	48 83 c4 38          	add    $0x38,%rsp
  4e:	5b                   	pop    %rbx
  4f:	5d                   	pop    %rbp
  50:	c3                   	ret    

0000000000000051 <printf>:
  51:	55                   	push   %rbp
  52:	53                   	push   %rbx
  53:	48 83 ec 38          	sub    $0x38,%rsp
  57:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
  5c:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
  60:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  64:	4c 89 45 30          	mov    %r8,0x30(%rbp)
  68:	4c 89 4d 38          	mov    %r9,0x38(%rbp)
  6c:	48 8d 45 28          	lea    0x28(%rbp),%rax
  70:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  74:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
  78:	b9 01 00 00 00       	mov    $0x1,%ecx
  7d:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 84 <printf+0x33>
  84:	ff d0                	call   *%rax
  86:	49 89 d8             	mov    %rbx,%r8
  89:	48 8b 55 20          	mov    0x20(%rbp),%rdx
  8d:	48 89 c1             	mov    %rax,%rcx
  90:	e8 00 00 00 00       	call   95 <printf+0x44>
  95:	89 45 fc             	mov    %eax,-0x4(%rbp)
  98:	8b 45 fc             	mov    -0x4(%rbp),%eax
  9b:	48 83 c4 38          	add    $0x38,%rsp
  9f:	5b                   	pop    %rbx
  a0:	5d                   	pop    %rbp
  a1:	c3                   	ret    

00000000000000a2 <main>:
  a2:	55                   	push   %rbp
  a3:	48 89 e5             	mov    %rsp,%rbp
  a6:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
  ad:	e8 00 00 00 00       	call   b2 <main+0x10>
  b2:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # b9 <main+0x17>
  b9:	e8 93 ff ff ff       	call   51 <printf>
  be:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  c2:	48 89 c2             	mov    %rax,%rdx
  c5:	48 8d 0d 12 00 00 00 	lea    0x12(%rip),%rcx        # de <main+0x3c>
  cc:	e8 2f ff ff ff       	call   0 <scanf>
  d1:	48 8d 0d 15 00 00 00 	lea    0x15(%rip),%rcx        # ed <main+0x4b>
  d8:	e8 74 ff ff ff       	call   51 <printf>
  dd:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  e4:	48 89 c2             	mov    %rax,%rdx
  e7:	48 8d 0d 12 00 00 00 	lea    0x12(%rip),%rcx        # 100 <main+0x5e>
  ee:	e8 0d ff ff ff       	call   0 <scanf>
  f3:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
  fa:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  fe:	48 89 c1             	mov    %rax,%rcx
 101:	e8 00 00 00 00       	call   106 <main+0x64>
 106:	85 c0                	test   %eax,%eax
 108:	0f 84 c9 04 00 00    	je     5d7 <main+0x535>
 10e:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 112:	48 8d 15 25 00 00 00 	lea    0x25(%rip),%rdx        # 13e <main+0x9c>
 119:	48 89 c1             	mov    %rax,%rcx
 11c:	e8 00 00 00 00       	call   121 <main+0x7f>
 121:	e8 00 00 00 00       	call   126 <main+0x84>
 126:	e8 00 00 00 00       	call   12b <main+0x89>
 12b:	89 45 fc             	mov    %eax,-0x4(%rbp)
 12e:	83 7d fc 0d          	cmpl   $0xd,-0x4(%rbp)
 132:	0f 87 47 04 00 00    	ja     57f <main+0x4dd>
 138:	8b 45 fc             	mov    -0x4(%rbp),%eax
 13b:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 142:	00 
 143:	48 8d 05 58 01 00 00 	lea    0x158(%rip),%rax        # 2a2 <main+0x200>
 14a:	8b 04 02             	mov    (%rdx,%rax,1),%eax
 14d:	48 98                	cltq   
 14f:	48 8d 15 58 01 00 00 	lea    0x158(%rip),%rdx        # 2ae <main+0x20c>
 156:	48 01 d0             	add    %rdx,%rax
 159:	ff e0                	jmp    *%rax
 15b:	e8 00 00 00 00       	call   160 <main+0xbe>
 160:	66 48 0f 7e c0       	movq   %xmm0,%rax
 165:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 169:	e8 00 00 00 00       	call   16e <main+0xcc>
 16e:	66 48 0f 7e c0       	movq   %xmm0,%rax
 173:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 177:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
 17c:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
 181:	66 0f 28 d1          	movapd %xmm1,%xmm2
 185:	66 0f 28 c8          	movapd %xmm0,%xmm1
 189:	48 8d 0d 40 00 00 00 	lea    0x40(%rip),%rcx        # 1d0 <main+0x12e>
 190:	e8 00 00 00 00       	call   195 <main+0xf3>
 195:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 199:	48 8d 15 40 00 00 00 	lea    0x40(%rip),%rdx        # 1e0 <main+0x13e>
 1a0:	48 89 c1             	mov    %rax,%rcx
 1a3:	e8 00 00 00 00       	call   1a8 <main+0x106>
 1a8:	e9 de 03 00 00       	jmp    58b <main+0x4e9>
 1ad:	e8 00 00 00 00       	call   1b2 <main+0x110>
 1b2:	66 48 0f 7e c0       	movq   %xmm0,%rax
 1b7:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 1bb:	e8 00 00 00 00       	call   1c0 <main+0x11e>
 1c0:	66 48 0f 7e c0       	movq   %xmm0,%rax
 1c5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 1c9:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
 1ce:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
 1d3:	66 0f 28 d1          	movapd %xmm1,%xmm2
 1d7:	66 0f 28 c8          	movapd %xmm0,%xmm1
 1db:	48 8d 0d 4b 00 00 00 	lea    0x4b(%rip),%rcx        # 22d <main+0x18b>
 1e2:	e8 00 00 00 00       	call   1e7 <main+0x145>
 1e7:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 1eb:	48 8d 15 4b 00 00 00 	lea    0x4b(%rip),%rdx        # 23d <main+0x19b>
 1f2:	48 89 c1             	mov    %rax,%rcx
 1f5:	e8 00 00 00 00       	call   1fa <main+0x158>
 1fa:	e9 8c 03 00 00       	jmp    58b <main+0x4e9>
 1ff:	e8 00 00 00 00       	call   204 <main+0x162>
 204:	66 48 0f 7e c0       	movq   %xmm0,%rax
 209:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 20d:	e8 00 00 00 00       	call   212 <main+0x170>
 212:	66 48 0f 7e c0       	movq   %xmm0,%rax
 217:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 21b:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
 220:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
 225:	66 0f 28 d1          	movapd %xmm1,%xmm2
 229:	66 0f 28 c8          	movapd %xmm0,%xmm1
 22d:	48 8d 0d 59 00 00 00 	lea    0x59(%rip),%rcx        # 28d <main+0x1eb>
 234:	e8 00 00 00 00       	call   239 <main+0x197>
 239:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 23d:	48 8d 15 59 00 00 00 	lea    0x59(%rip),%rdx        # 29d <main+0x1fb>
 244:	48 89 c1             	mov    %rax,%rcx
 247:	e8 00 00 00 00       	call   24c <main+0x1aa>
 24c:	e9 3a 03 00 00       	jmp    58b <main+0x4e9>
 251:	e8 00 00 00 00       	call   256 <main+0x1b4>
 256:	66 48 0f 7e c0       	movq   %xmm0,%rax
 25b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 25f:	e8 00 00 00 00       	call   264 <main+0x1c2>
 264:	66 48 0f 7e c0       	movq   %xmm0,%rax
 269:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 26d:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
 272:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
 277:	66 0f 28 d1          	movapd %xmm1,%xmm2
 27b:	66 0f 28 c8          	movapd %xmm0,%xmm1
 27f:	48 8d 0d 62 00 00 00 	lea    0x62(%rip),%rcx        # 2e8 <main+0x246>
 286:	e8 00 00 00 00       	call   28b <main+0x1e9>
 28b:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 28f:	48 8d 15 62 00 00 00 	lea    0x62(%rip),%rdx        # 2f8 <main+0x256>
 296:	48 89 c1             	mov    %rax,%rcx
 299:	e8 00 00 00 00       	call   29e <main+0x1fc>
 29e:	e9 e8 02 00 00       	jmp    58b <main+0x4e9>
 2a3:	e8 00 00 00 00       	call   2a8 <main+0x206>
 2a8:	66 48 0f 7e c0       	movq   %xmm0,%rax
 2ad:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 2b1:	e8 00 00 00 00       	call   2b6 <main+0x214>
 2b6:	66 48 0f 7e c0       	movq   %xmm0,%rax
 2bb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 2bf:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
 2c4:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
 2c9:	66 0f 28 d1          	movapd %xmm1,%xmm2
 2cd:	66 0f 28 c8          	movapd %xmm0,%xmm1
 2d1:	48 8d 0d 6e 00 00 00 	lea    0x6e(%rip),%rcx        # 346 <main+0x2a4>
 2d8:	e8 00 00 00 00       	call   2dd <main+0x23b>
 2dd:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 2e1:	48 8d 15 6e 00 00 00 	lea    0x6e(%rip),%rdx        # 356 <main+0x2b4>
 2e8:	48 89 c1             	mov    %rax,%rcx
 2eb:	e8 00 00 00 00       	call   2f0 <main+0x24e>
 2f0:	e9 96 02 00 00       	jmp    58b <main+0x4e9>
 2f5:	e8 00 00 00 00       	call   2fa <main+0x258>
 2fa:	66 48 0f 7e c0       	movq   %xmm0,%rax
 2ff:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 303:	e8 00 00 00 00       	call   308 <main+0x266>
 308:	66 48 0f 7e c0       	movq   %xmm0,%rax
 30d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 311:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
 316:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
 31b:	66 0f 28 d1          	movapd %xmm1,%xmm2
 31f:	66 0f 28 c8          	movapd %xmm0,%xmm1
 323:	48 8d 0d 74 00 00 00 	lea    0x74(%rip),%rcx        # 39e <main+0x2fc>
 32a:	e8 00 00 00 00       	call   32f <main+0x28d>
 32f:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 333:	48 8d 15 74 00 00 00 	lea    0x74(%rip),%rdx        # 3ae <main+0x30c>
 33a:	48 89 c1             	mov    %rax,%rcx
 33d:	e8 00 00 00 00       	call   342 <main+0x2a0>
 342:	e9 44 02 00 00       	jmp    58b <main+0x4e9>
 347:	e8 00 00 00 00       	call   34c <main+0x2aa>
 34c:	66 48 0f 7e c0       	movq   %xmm0,%rax
 351:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 355:	e8 00 00 00 00       	call   35a <main+0x2b8>
 35a:	66 48 0f 7e c0       	movq   %xmm0,%rax
 35f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 363:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
 368:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
 36d:	66 0f 28 d1          	movapd %xmm1,%xmm2
 371:	66 0f 28 c8          	movapd %xmm0,%xmm1
 375:	48 8d 0d 7d 00 00 00 	lea    0x7d(%rip),%rcx        # 3f9 <main+0x357>
 37c:	e8 00 00 00 00       	call   381 <main+0x2df>
 381:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 385:	48 8d 15 7d 00 00 00 	lea    0x7d(%rip),%rdx        # 409 <main+0x367>
 38c:	48 89 c1             	mov    %rax,%rcx
 38f:	e8 00 00 00 00       	call   394 <main+0x2f2>
 394:	e9 f2 01 00 00       	jmp    58b <main+0x4e9>
 399:	e8 00 00 00 00       	call   39e <main+0x2fc>
 39e:	66 48 0f 7e c0       	movq   %xmm0,%rax
 3a3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 3a7:	e8 00 00 00 00       	call   3ac <main+0x30a>
 3ac:	66 48 0f 7e c0       	movq   %xmm0,%rax
 3b1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 3b5:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
 3ba:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
 3bf:	66 0f 28 d1          	movapd %xmm1,%xmm2
 3c3:	66 0f 28 c8          	movapd %xmm0,%xmm1
 3c7:	48 8d 0d 86 00 00 00 	lea    0x86(%rip),%rcx        # 454 <main+0x3b2>
 3ce:	e8 00 00 00 00       	call   3d3 <main+0x331>
 3d3:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 3d7:	48 8d 15 86 00 00 00 	lea    0x86(%rip),%rdx        # 464 <main+0x3c2>
 3de:	48 89 c1             	mov    %rax,%rcx
 3e1:	e8 00 00 00 00       	call   3e6 <main+0x344>
 3e6:	e9 a0 01 00 00       	jmp    58b <main+0x4e9>
 3eb:	e8 00 00 00 00       	call   3f0 <main+0x34e>
 3f0:	66 48 0f 7e c0       	movq   %xmm0,%rax
 3f5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 3f9:	e8 00 00 00 00       	call   3fe <main+0x35c>
 3fe:	66 48 0f 7e c0       	movq   %xmm0,%rax
 403:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 407:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
 40c:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
 411:	66 0f 28 d1          	movapd %xmm1,%xmm2
 415:	66 0f 28 c8          	movapd %xmm0,%xmm1
 419:	48 8d 0d 98 00 00 00 	lea    0x98(%rip),%rcx        # 4b8 <main+0x416>
 420:	e8 00 00 00 00       	call   425 <main+0x383>
 425:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 429:	48 8d 15 98 00 00 00 	lea    0x98(%rip),%rdx        # 4c8 <main+0x426>
 430:	48 89 c1             	mov    %rax,%rcx
 433:	e8 00 00 00 00       	call   438 <main+0x396>
 438:	e9 4e 01 00 00       	jmp    58b <main+0x4e9>
 43d:	e8 00 00 00 00       	call   442 <main+0x3a0>
 442:	66 48 0f 7e c0       	movq   %xmm0,%rax
 447:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 44b:	e8 00 00 00 00       	call   450 <main+0x3ae>
 450:	66 48 0f 7e c0       	movq   %xmm0,%rax
 455:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 459:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
 45e:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
 463:	66 0f 28 d1          	movapd %xmm1,%xmm2
 467:	66 0f 28 c8          	movapd %xmm0,%xmm1
 46b:	48 8d 0d 9d 00 00 00 	lea    0x9d(%rip),%rcx        # 50f <main+0x46d>
 472:	e8 00 00 00 00       	call   477 <main+0x3d5>
 477:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 47b:	48 8d 15 9d 00 00 00 	lea    0x9d(%rip),%rdx        # 51f <main+0x47d>
 482:	48 89 c1             	mov    %rax,%rcx
 485:	e8 00 00 00 00       	call   48a <main+0x3e8>
 48a:	e9 fc 00 00 00       	jmp    58b <main+0x4e9>
 48f:	e8 00 00 00 00       	call   494 <main+0x3f2>
 494:	66 48 0f 7e c0       	movq   %xmm0,%rax
 499:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 49d:	e8 00 00 00 00       	call   4a2 <main+0x400>
 4a2:	66 48 0f 7e c0       	movq   %xmm0,%rax
 4a7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 4ab:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
 4b0:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
 4b5:	66 0f 28 d1          	movapd %xmm1,%xmm2
 4b9:	66 0f 28 c8          	movapd %xmm0,%xmm1
 4bd:	48 8d 0d a5 00 00 00 	lea    0xa5(%rip),%rcx        # 569 <main+0x4c7>
 4c4:	e8 00 00 00 00       	call   4c9 <main+0x427>
 4c9:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 4cd:	48 8d 15 a5 00 00 00 	lea    0xa5(%rip),%rdx        # 579 <main+0x4d7>
 4d4:	48 89 c1             	mov    %rax,%rcx
 4d7:	e8 00 00 00 00       	call   4dc <main+0x43a>
 4dc:	e9 aa 00 00 00       	jmp    58b <main+0x4e9>
 4e1:	e8 00 00 00 00       	call   4e6 <main+0x444>
 4e6:	66 48 0f 7e c0       	movq   %xmm0,%rax
 4eb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 4ef:	e8 00 00 00 00       	call   4f4 <main+0x452>
 4f4:	66 48 0f 7e c0       	movq   %xmm0,%rax
 4f9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 4fd:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
 502:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
 507:	66 0f 28 d1          	movapd %xmm1,%xmm2
 50b:	66 0f 28 c8          	movapd %xmm0,%xmm1
 50f:	48 8d 0d ae 00 00 00 	lea    0xae(%rip),%rcx        # 5c4 <main+0x522>
 516:	e8 00 00 00 00       	call   51b <main+0x479>
 51b:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 51f:	48 8d 15 ae 00 00 00 	lea    0xae(%rip),%rdx        # 5d4 <main+0x532>
 526:	48 89 c1             	mov    %rax,%rcx
 529:	e8 00 00 00 00       	call   52e <main+0x48c>
 52e:	eb 5b                	jmp    58b <main+0x4e9>
 530:	e8 00 00 00 00       	call   535 <main+0x493>
 535:	66 48 0f 7e c0       	movq   %xmm0,%rax
 53a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 53e:	e8 00 00 00 00       	call   543 <main+0x4a1>
 543:	66 48 0f 7e c0       	movq   %xmm0,%rax
 548:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 54c:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
 551:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
 556:	66 0f 28 d1          	movapd %xmm1,%xmm2
 55a:	66 0f 28 c8          	movapd %xmm0,%xmm1
 55e:	48 8d 0d b5 00 00 00 	lea    0xb5(%rip),%rcx        # 61a <main+0x578>
 565:	e8 00 00 00 00       	call   56a <main+0x4c8>
 56a:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 56e:	48 8d 15 b5 00 00 00 	lea    0xb5(%rip),%rdx        # 62a <main+0x588>
 575:	48 89 c1             	mov    %rax,%rcx
 578:	e8 00 00 00 00       	call   57d <main+0x4db>
 57d:	eb 0c                	jmp    58b <main+0x4e9>
 57f:	48 8d 0d ba 00 00 00 	lea    0xba(%rip),%rcx        # 640 <main+0x59e>
 586:	e8 c6 fa ff ff       	call   51 <printf>
 58b:	48 8d 0d d0 00 00 00 	lea    0xd0(%rip),%rcx        # 662 <main+0x5c0>
 592:	e8 ba fa ff ff       	call   51 <printf>
 597:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
 59b:	48 89 c2             	mov    %rax,%rdx
 59e:	48 8d 0d f6 00 00 00 	lea    0xf6(%rip),%rcx        # 69b <main+0x5f9>
 5a5:	e8 56 fa ff ff       	call   0 <scanf>
 5aa:	0f b6 45 e7          	movzbl -0x19(%rbp),%eax
 5ae:	3c 73                	cmp    $0x73,%al
 5b0:	0f 84 6b fb ff ff    	je     121 <main+0x7f>
 5b6:	0f b6 45 e7          	movzbl -0x19(%rbp),%eax
 5ba:	3c 53                	cmp    $0x53,%al
 5bc:	0f 84 5f fb ff ff    	je     121 <main+0x7f>
 5c2:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 5c6:	48 8d 15 fa 00 00 00 	lea    0xfa(%rip),%rdx        # 6c7 <main+0x625>
 5cd:	48 89 c1             	mov    %rax,%rcx
 5d0:	e8 00 00 00 00       	call   5d5 <main+0x533>
 5d5:	eb 1f                	jmp    5f6 <main+0x554>
 5d7:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 5db:	48 8d 15 10 01 00 00 	lea    0x110(%rip),%rdx        # 6f2 <main+0x650>
 5e2:	48 89 c1             	mov    %rax,%rcx
 5e5:	e8 00 00 00 00       	call   5ea <main+0x548>
 5ea:	48 8d 0d 37 01 00 00 	lea    0x137(%rip),%rcx        # 728 <main+0x686>
 5f1:	e8 5b fa ff ff       	call   51 <printf>
 5f6:	b8 00 00 00 00       	mov    $0x0,%eax
 5fb:	48 81 c4 b0 00 00 00 	add    $0xb0,%rsp
 602:	5d                   	pop    %rbp
 603:	c3                   	ret    
 604:	90                   	nop
 605:	90                   	nop
 606:	90                   	nop
 607:	90                   	nop
 608:	90                   	nop
 609:	90                   	nop
 60a:	90                   	nop
 60b:	90                   	nop
 60c:	90                   	nop
 60d:	90                   	nop
 60e:	90                   	nop
 60f:	90                   	nop
