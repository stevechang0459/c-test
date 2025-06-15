	.file	"main.c"
 # GNU C23 (Rev5, Built by MSYS2 project) version 15.1.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 15.1.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -mtune=generic -march=nocona -g0 -O0
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "sizeof(p):%zu\12\0"
.LC1:
	.ascii "&p:%p\12\0"
.LC2:
	.ascii "p.a: %p, %8x, %zu\12\0"
.LC3:
	.ascii "p.b: %p, %8x, %zu\12\0"
.LC4:
	.ascii "p.c: %p, %8x, %zu\12\0"
.LC5:
	.ascii "p.d: %p, %8x, %zu\12\0"
.LC6:
	.ascii "p.e: %p, %8x, %zu\12\0"
.LC7:
	.ascii "p.f: %p, %8x, %zu\12\0"
.LC8:
	.ascii "x  : %x\12\0"
.LC9:
	.ascii "p.b: %x\12\0"
.LC10:
	.ascii "sizeof(s):%zu\12\0"
.LC11:
	.ascii "&s:%p\12\0"
.LC12:
	.ascii "s.a: %p, %8x, %zu\12\0"
.LC13:
	.ascii "s.b: %p, %8x, %zu\12\0"
.LC14:
	.ascii "s.c: %p, %8x, %zu\12\0"
.LC15:
	.ascii "s.d: %p, %8x, %zu\12\0"
.LC16:
	.ascii "s.e: %p, %8x, %zu\12\0"
.LC17:
	.ascii "s.f: %p, %8x, %zu\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	.seh_endprologue
	movl	%ecx, 16(%rbp)	 # argc, argc
	movq	%rdx, 24(%rbp)	 # argv, argv
 # main.c:25: {
	call	__main	 #
 # main.c:27:     memset(&p, 0, sizeof(p));
	leaq	-14(%rbp), %rax	 #, tmp123
	movl	$10, %r8d	 #,
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp123,
	call	memset	 #
 # main.c:29:     p.a = 0x11;
	movb	$17, -14(%rbp)	 #, p.a
 # main.c:30:     p.b = 0x22334455;
	movl	$573785173, -13(%rbp)	 #, p.b
 # main.c:31:     p.c = 0x66;
	movb	$102, -9(%rbp)	 #, p.c
 # main.c:32:     p.d = 0x77;
	movb	$119, -8(%rbp)	 #, p.d
 # main.c:33:     p.e = 0x88;
	movb	$-120, -7(%rbp)	 #, p.e
 # main.c:34:     p.f = 0x99AA;
	movw	$-26198, -6(%rbp)	 #, p.f
 # main.c:36:     printf("sizeof(p):%zu\n", sizeof(p));
	leaq	.LC0(%rip), %rax	 #, tmp124
	movl	$10, %edx	 #,
	movq	%rax, %rcx	 # tmp124,
	call	printf	 #
 # main.c:37:     printf("&p:%p\n", &p);
	leaq	-14(%rbp), %rax	 #, tmp125
	leaq	.LC1(%rip), %rcx	 #, tmp126
	movq	%rax, %rdx	 # tmp125,
	call	printf	 #
 # main.c:38:     printf("p.a: %p, %8x, %zu\n", &p.a, p.a, sizeof(p.a));
	movzbl	-14(%rbp), %eax	 # p.a, _1
 # main.c:38:     printf("p.a: %p, %8x, %zu\n", &p.a, p.a, sizeof(p.a));
	movzbl	%al, %edx	 # _1, _2
	leaq	-14(%rbp), %rax	 #, tmp127
	leaq	.LC2(%rip), %rcx	 #, tmp128
	movl	$1, %r9d	 #,
	movl	%edx, %r8d	 # _2,
	movq	%rax, %rdx	 # tmp127,
	call	printf	 #
 # main.c:39:     printf("p.b: %p, %8x, %zu\n", &p.b, p.b, sizeof(p.b));
	movl	-13(%rbp), %ecx	 # p.b, _3
	leaq	-14(%rbp), %rax	 #, tmp129
	leaq	1(%rax), %rdx	 #, tmp130
	leaq	.LC3(%rip), %rax	 #, tmp131
	movl	$4, %r9d	 #,
	movl	%ecx, %r8d	 # _3,
	movq	%rax, %rcx	 # tmp131,
	call	printf	 #
 # main.c:40:     printf("p.c: %p, %8x, %zu\n", &p.c, p.c, sizeof(p.c));
	movzbl	-9(%rbp), %eax	 # p.c, _4
 # main.c:40:     printf("p.c: %p, %8x, %zu\n", &p.c, p.c, sizeof(p.c));
	movzbl	%al, %ecx	 # _4, _5
	leaq	-14(%rbp), %rax	 #, tmp132
	leaq	5(%rax), %rdx	 #, tmp133
	leaq	.LC4(%rip), %rax	 #, tmp134
	movl	$1, %r9d	 #,
	movl	%ecx, %r8d	 # _5,
	movq	%rax, %rcx	 # tmp134,
	call	printf	 #
 # main.c:41:     printf("p.d: %p, %8x, %zu\n", &p.d, p.d, sizeof(p.d));
	movzbl	-8(%rbp), %eax	 # p.d, _6
 # main.c:41:     printf("p.d: %p, %8x, %zu\n", &p.d, p.d, sizeof(p.d));
	movzbl	%al, %ecx	 # _6, _7
	leaq	-14(%rbp), %rax	 #, tmp135
	leaq	6(%rax), %rdx	 #, tmp136
	leaq	.LC5(%rip), %rax	 #, tmp137
	movl	$1, %r9d	 #,
	movl	%ecx, %r8d	 # _7,
	movq	%rax, %rcx	 # tmp137,
	call	printf	 #
 # main.c:42:     printf("p.e: %p, %8x, %zu\n", &p.e, p.e, sizeof(p.e));
	movzbl	-7(%rbp), %eax	 # p.e, _8
 # main.c:42:     printf("p.e: %p, %8x, %zu\n", &p.e, p.e, sizeof(p.e));
	movzbl	%al, %ecx	 # _8, _9
	leaq	-14(%rbp), %rax	 #, tmp138
	leaq	7(%rax), %rdx	 #, tmp139
	leaq	.LC6(%rip), %rax	 #, tmp140
	movl	$1, %r9d	 #,
	movl	%ecx, %r8d	 # _9,
	movq	%rax, %rcx	 # tmp140,
	call	printf	 #
 # main.c:43:     printf("p.f: %p, %8x, %zu\n", &p.f, p.f, sizeof(p.f));
	movzwl	-6(%rbp), %eax	 # p.f, _10
 # main.c:43:     printf("p.f: %p, %8x, %zu\n", &p.f, p.f, sizeof(p.f));
	movzwl	%ax, %ecx	 # _10, _11
	leaq	-14(%rbp), %rax	 #, tmp141
	leaq	8(%rax), %rdx	 #, tmp142
	leaq	.LC7(%rip), %rax	 #, tmp143
	movl	$2, %r9d	 #,
	movl	%ecx, %r8d	 # _11,
	movq	%rax, %rcx	 # tmp143,
	call	printf	 #
 # main.c:45:     uint32_t x = p.b;
	movl	-13(%rbp), %eax	 # p.b, tmp144
	movl	%eax, -4(%rbp)	 # tmp144, x
 # main.c:46:     printf("\n");
	movl	$10, %ecx	 #,
	call	putchar	 #
 # main.c:47:     printf("x  : %x\n", x);
	movl	-4(%rbp), %eax	 # x, tmp145
	leaq	.LC8(%rip), %rcx	 #, tmp146
	movl	%eax, %edx	 # tmp145,
	call	printf	 #
 # main.c:48:     printf("p.b: %x\n", p.b);
	movl	-13(%rbp), %eax	 # p.b, _12
	leaq	.LC9(%rip), %rcx	 #, tmp147
	movl	%eax, %edx	 # _12,
	call	printf	 #
 # main.c:49:     printf("\n");
	movl	$10, %ecx	 #,
	call	putchar	 #
 # main.c:52:     memset(&s, 0, sizeof(s));
	leaq	-32(%rbp), %rax	 #, tmp148
	movl	$16, %r8d	 #,
	movl	$0, %edx	 #,
	movq	%rax, %rcx	 # tmp148,
	call	memset	 #
 # main.c:54:     s.a = 0x11;
	movb	$17, -32(%rbp)	 #, s.a
 # main.c:55:     s.b = 0x22334455;
	movl	$573785173, -28(%rbp)	 #, s.b
 # main.c:56:     s.c = 0x66;
	movb	$102, -24(%rbp)	 #, s.c
 # main.c:57:     s.d = 0x77;
	movb	$119, -23(%rbp)	 #, s.d
 # main.c:58:     s.e = 0x88;
	movb	$-120, -22(%rbp)	 #, s.e
 # main.c:59:     s.f = 0x99AA;
	movw	$-26198, -20(%rbp)	 #, s.f
 # main.c:61:     printf("sizeof(s):%zu\n", sizeof(s));
	leaq	.LC10(%rip), %rax	 #, tmp149
	movl	$16, %edx	 #,
	movq	%rax, %rcx	 # tmp149,
	call	printf	 #
 # main.c:62:     printf("&s:%p\n", &s);
	leaq	-32(%rbp), %rax	 #, tmp150
	leaq	.LC11(%rip), %rcx	 #, tmp151
	movq	%rax, %rdx	 # tmp150,
	call	printf	 #
 # main.c:63:     printf("s.a: %p, %8x, %zu\n", &s.a, s.a, sizeof(s.a));
	movzbl	-32(%rbp), %eax	 # s.a, _13
 # main.c:63:     printf("s.a: %p, %8x, %zu\n", &s.a, s.a, sizeof(s.a));
	movzbl	%al, %edx	 # _13, _14
	leaq	-32(%rbp), %rax	 #, tmp152
	leaq	.LC12(%rip), %rcx	 #, tmp153
	movl	$1, %r9d	 #,
	movl	%edx, %r8d	 # _14,
	movq	%rax, %rdx	 # tmp152,
	call	printf	 #
 # main.c:64:     printf("s.b: %p, %8x, %zu\n", &s.b, s.b, sizeof(s.b));
	movl	-28(%rbp), %ecx	 # s.b, _15
	leaq	-32(%rbp), %rax	 #, tmp154
	leaq	4(%rax), %rdx	 #, tmp155
	leaq	.LC13(%rip), %rax	 #, tmp156
	movl	$4, %r9d	 #,
	movl	%ecx, %r8d	 # _15,
	movq	%rax, %rcx	 # tmp156,
	call	printf	 #
 # main.c:65:     printf("s.c: %p, %8x, %zu\n", &s.c, s.c, sizeof(s.c));
	movzbl	-24(%rbp), %eax	 # s.c, _16
 # main.c:65:     printf("s.c: %p, %8x, %zu\n", &s.c, s.c, sizeof(s.c));
	movzbl	%al, %ecx	 # _16, _17
	leaq	-32(%rbp), %rax	 #, tmp157
	leaq	8(%rax), %rdx	 #, tmp158
	leaq	.LC14(%rip), %rax	 #, tmp159
	movl	$1, %r9d	 #,
	movl	%ecx, %r8d	 # _17,
	movq	%rax, %rcx	 # tmp159,
	call	printf	 #
 # main.c:66:     printf("s.d: %p, %8x, %zu\n", &s.d, s.d, sizeof(s.d));
	movzbl	-23(%rbp), %eax	 # s.d, _18
 # main.c:66:     printf("s.d: %p, %8x, %zu\n", &s.d, s.d, sizeof(s.d));
	movzbl	%al, %ecx	 # _18, _19
	leaq	-32(%rbp), %rax	 #, tmp160
	leaq	9(%rax), %rdx	 #, tmp161
	leaq	.LC15(%rip), %rax	 #, tmp162
	movl	$1, %r9d	 #,
	movl	%ecx, %r8d	 # _19,
	movq	%rax, %rcx	 # tmp162,
	call	printf	 #
 # main.c:67:     printf("s.e: %p, %8x, %zu\n", &s.e, s.e, sizeof(s.e));
	movzbl	-22(%rbp), %eax	 # s.e, _20
 # main.c:67:     printf("s.e: %p, %8x, %zu\n", &s.e, s.e, sizeof(s.e));
	movzbl	%al, %ecx	 # _20, _21
	leaq	-32(%rbp), %rax	 #, tmp163
	leaq	10(%rax), %rdx	 #, tmp164
	leaq	.LC16(%rip), %rax	 #, tmp165
	movl	$1, %r9d	 #,
	movl	%ecx, %r8d	 # _21,
	movq	%rax, %rcx	 # tmp165,
	call	printf	 #
 # main.c:68:     printf("s.f: %p, %8x, %zu\n", &s.f, s.f, sizeof(s.f));
	movzwl	-20(%rbp), %eax	 # s.f, _22
 # main.c:68:     printf("s.f: %p, %8x, %zu\n", &s.f, s.f, sizeof(s.f));
	movzwl	%ax, %ecx	 # _22, _23
	leaq	-32(%rbp), %rax	 #, tmp166
	leaq	12(%rax), %rdx	 #, tmp167
	leaq	.LC17(%rip), %rax	 #, tmp168
	movl	$2, %r9d	 #,
	movl	%ecx, %r8d	 # _23,
	movq	%rax, %rcx	 # tmp168,
	call	printf	 #
 # main.c:70:     return 0;
	movl	$0, %eax	 #, _60
 # main.c:71: }
	addq	$64, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 15.1.0"
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
