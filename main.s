	.file	"main.c"
	.text
	.def	scanf;	.scl	3;	.type	32;	.endef
	.seh_proc	scanf
scanf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rbx, %r8
	movq	32(%rbp), %rdx
	movq	%rax, %rcx
	call	__mingw_vfscanf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$1, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rbx, %r8
	movq	32(%rbp), %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Ingrese usuario: \0"
.LC1:
	.ascii "%s\0"
.LC2:
	.ascii "Ingrese clave: \0"
.LC3:
	.ascii "Ingreso exitoso al sistema\0"
.LC4:
	.ascii "Tri\303\241ngulo\0"
.LC5:
	.ascii "Paralelogramo\0"
.LC6:
	.ascii "Cuadrado\0"
.LC7:
	.ascii "Rect\303\241ngulo\0"
.LC8:
	.ascii "Rombo\0"
.LC9:
	.ascii "Trapecio\0"
.LC10:
	.ascii "C\303\255rculo\0"
.LC11:
	.ascii "Pol\303\255gono Regular\0"
.LC12:
	.ascii "Cubo\0"
.LC13:
	.ascii "Cuboide\0"
.LC14:
	.ascii "Cilindro\0"
.LC15:
	.ascii "Esfera\0"
.LC16:
	.ascii "Cono\0"
.LC17:
	.ascii "Opci\303\263n no v\303\241lida\12\0"
	.align 8
.LC18:
	.ascii "\302\277Desea analizar otra figura? (s/n): \0"
.LC19:
	.ascii " %c\0"
.LC20:
	.ascii "Salida del sistema\0"
	.align 8
.LC21:
	.ascii "Ingreso fallido usuario/clave err\303\263neo\0"
.LC22:
	.ascii "Usuario o clave incorrectos.\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$176, %rsp
	.seh_stackalloc	176
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rcx
	call	printf
	leaq	-80(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	leaq	.LC2(%rip), %rcx
	call	printf
	leaq	-144(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	leaq	-144(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	validarUsuario
	testl	%eax, %eax
	je	.L6
	leaq	-80(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	registrarEvento
.L23:
	call	mostrarMenu
	call	leerOpcion
	movl	%eax, -4(%rbp)
	cmpl	$13, -4(%rbp)
	ja	.L7
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L9(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L9(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L9:
	.long	.L7-.L9
	.long	.L21-.L9
	.long	.L20-.L9
	.long	.L19-.L9
	.long	.L18-.L9
	.long	.L17-.L9
	.long	.L16-.L9
	.long	.L15-.L9
	.long	.L14-.L9
	.long	.L13-.L9
	.long	.L12-.L9
	.long	.L11-.L9
	.long	.L10-.L9
	.long	.L8-.L9
	.text
.L21:
	call	calcularAreaTriangulo
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	call	calcularPerimetroTriangulo
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	leaq	.LC4(%rip), %rcx
	call	mostrarResultados
	leaq	-80(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	registrarEvento
	jmp	.L22
.L20:
	call	calcularAreaParalelogramo
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	call	calcularPerimetroParalelogramo
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	leaq	.LC5(%rip), %rcx
	call	mostrarResultados
	leaq	-80(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	registrarEvento
	jmp	.L22
.L19:
	call	calcularAreaCuadrado
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	call	calcularPerimetroCuadrado
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	leaq	.LC6(%rip), %rcx
	call	mostrarResultados
	leaq	-80(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	registrarEvento
	jmp	.L22
.L18:
	call	calcularAreaRectangulo
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	call	calcularPerimetroRectangulo
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	leaq	.LC7(%rip), %rcx
	call	mostrarResultados
	leaq	-80(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	call	registrarEvento
	jmp	.L22
.L17:
	call	calcularAreaRombo
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	call	calcularPerimetroRombo
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	leaq	.LC8(%rip), %rcx
	call	mostrarResultados
	leaq	-80(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	registrarEvento
	jmp	.L22
.L16:
	call	calcularAreaTrapecio
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	call	calcularPerimetroTrapecio
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	leaq	.LC9(%rip), %rcx
	call	mostrarResultados
	leaq	-80(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
	call	registrarEvento
	jmp	.L22
.L15:
	call	calcularAreaCirculo
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	call	calcularPerimetroCirculo
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	leaq	.LC10(%rip), %rcx
	call	mostrarResultados
	leaq	-80(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	registrarEvento
	jmp	.L22
.L14:
	call	calcularAreaPoligonoRegular
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	call	calcularPerimetroPoligonoRegular
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	leaq	.LC11(%rip), %rcx
	call	mostrarResultados
	leaq	-80(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	registrarEvento
	jmp	.L22
.L13:
	call	calcularSuperficieCubo
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	call	calcularVolumenCubo
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	leaq	.LC12(%rip), %rcx
	call	mostrarResultados
	leaq	-80(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	registrarEvento
	jmp	.L22
.L12:
	call	calcularSuperficieCuboide
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	call	calcularVolumenCuboide
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	leaq	.LC13(%rip), %rcx
	call	mostrarResultados
	leaq	-80(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	call	registrarEvento
	jmp	.L22
.L11:
	call	calcularSuperficieCilindro
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	call	calcularVolumenCilindro
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	leaq	.LC14(%rip), %rcx
	call	mostrarResultados
	leaq	-80(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	registrarEvento
	jmp	.L22
.L10:
	call	calcularSuperficieEsfera
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	call	calcularVolumenEsfera
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	leaq	.LC15(%rip), %rcx
	call	mostrarResultados
	leaq	-80(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	call	registrarEvento
	jmp	.L22
.L8:
	call	calcularSuperficieCono
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	call	calcularVolumenCono
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	leaq	.LC16(%rip), %rcx
	call	mostrarResultados
	leaq	-80(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	registrarEvento
	jmp	.L22
.L7:
	leaq	.LC17(%rip), %rcx
	call	printf
.L22:
	leaq	.LC18(%rip), %rcx
	call	printf
	leaq	-25(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rcx
	call	scanf
	movzbl	-25(%rbp), %eax
	cmpb	$115, %al
	je	.L23
	movzbl	-25(%rbp), %eax
	cmpb	$83, %al
	je	.L23
	leaq	-80(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	call	registrarEvento
	jmp	.L24
.L6:
	leaq	-80(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	movq	%rax, %rcx
	call	registrarEvento
	leaq	.LC22(%rip), %rcx
	call	printf
.L24:
	movl	$0, %eax
	addq	$176, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (tdm64-1) 10.3.0"
	.def	__mingw_vfscanf;	.scl	2;	.type	32;	.endef
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	validarUsuario;	.scl	2;	.type	32;	.endef
	.def	registrarEvento;	.scl	2;	.type	32;	.endef
	.def	mostrarMenu;	.scl	2;	.type	32;	.endef
	.def	leerOpcion;	.scl	2;	.type	32;	.endef
	.def	calcularAreaTriangulo;	.scl	2;	.type	32;	.endef
	.def	calcularPerimetroTriangulo;	.scl	2;	.type	32;	.endef
	.def	mostrarResultados;	.scl	2;	.type	32;	.endef
	.def	calcularAreaParalelogramo;	.scl	2;	.type	32;	.endef
	.def	calcularPerimetroParalelogramo;	.scl	2;	.type	32;	.endef
	.def	calcularAreaCuadrado;	.scl	2;	.type	32;	.endef
	.def	calcularPerimetroCuadrado;	.scl	2;	.type	32;	.endef
	.def	calcularAreaRectangulo;	.scl	2;	.type	32;	.endef
	.def	calcularPerimetroRectangulo;	.scl	2;	.type	32;	.endef
	.def	calcularAreaRombo;	.scl	2;	.type	32;	.endef
	.def	calcularPerimetroRombo;	.scl	2;	.type	32;	.endef
	.def	calcularAreaTrapecio;	.scl	2;	.type	32;	.endef
	.def	calcularPerimetroTrapecio;	.scl	2;	.type	32;	.endef
	.def	calcularAreaCirculo;	.scl	2;	.type	32;	.endef
	.def	calcularPerimetroCirculo;	.scl	2;	.type	32;	.endef
	.def	calcularAreaPoligonoRegular;	.scl	2;	.type	32;	.endef
	.def	calcularPerimetroPoligonoRegular;	.scl	2;	.type	32;	.endef
	.def	calcularSuperficieCubo;	.scl	2;	.type	32;	.endef
	.def	calcularVolumenCubo;	.scl	2;	.type	32;	.endef
	.def	calcularSuperficieCuboide;	.scl	2;	.type	32;	.endef
	.def	calcularVolumenCuboide;	.scl	2;	.type	32;	.endef
	.def	calcularSuperficieCilindro;	.scl	2;	.type	32;	.endef
	.def	calcularVolumenCilindro;	.scl	2;	.type	32;	.endef
	.def	calcularSuperficieEsfera;	.scl	2;	.type	32;	.endef
	.def	calcularVolumenEsfera;	.scl	2;	.type	32;	.endef
	.def	calcularSuperficieCono;	.scl	2;	.type	32;	.endef
	.def	calcularVolumenCono;	.scl	2;	.type	32;	.endef
