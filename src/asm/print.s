	.file	"print.c"
 # GNU C23 (Rev5, Built by MSYS2 project) version 15.1.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 15.1.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -mtune=generic -march=nocona -g0 -O0
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "len is zero.\12\0"
.LC1:
	.ascii "0x%p: \0"
.LC2:
	.ascii "%02X \0"
.LC3:
	.ascii "   \0"
	.text
	.globl	print_buf
	.def	print_buf;	.scl	2;	.type	32;	.endef
	.seh_proc	print_buf
print_buf:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$72, %rsp	 #,
	.seh_stackalloc	72
	leaq	64(%rsp), %rbp	 #,
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)	 # buf, buf
	movq	%rdx, 40(%rbp)	 # len, len
	movq	%r8, 48(%rbp)	 # title, title
	movq	%r9, 56(%rbp)	 #,
 # print.c:23: 	int new_line = 1;
	movl	$1, -12(%rbp)	 #, new_line
 # print.c:26: 	if (title && *title) {
	cmpq	$0, 48(%rbp)	 #, title
	je	.L2	 #,
 # print.c:26: 	if (title && *title) {
	movq	48(%rbp), %rax	 # title, tmp138
	movzbl	(%rax), %eax	 # *title_64(D), _1
 # print.c:26: 	if (title && *title) {
	testb	%al, %al	 # _1
	je	.L2	 #,
 # print.c:28: 		va_start(argp, title);
	leaq	56(%rbp), %rax	 #, tmp139
	movq	%rax, -24(%rbp)	 # tmp139, MEM[(char * *)&argp]
 # print.c:29: 		vfprintf(stderr, title, argp);
	movq	-24(%rbp), %rbx	 # argp, argp.0_2
 # print.c:29: 		vfprintf(stderr, title, argp);
	movl	$2, %ecx	 #,
	movq	__imp___acrt_iob_func(%rip), %rax	 #, tmp140
	call	*%rax	 # tmp140
	movq	%rax, %rcx	 #, _3
 # print.c:29: 		vfprintf(stderr, title, argp);
	movq	48(%rbp), %rax	 # title, tmp141
	movq	%rbx, %r8	 # argp.0_2,
	movq	%rax, %rdx	 # tmp141,
	call	vfprintf	 #
 # print.c:31: 		fputc('\n', stderr);
	movl	$2, %ecx	 #,
	movq	__imp___acrt_iob_func(%rip), %rax	 #, tmp142
	call	*%rax	 # tmp142
 # print.c:31: 		fputc('\n', stderr);
	movq	%rax, %rdx	 # _4,
	movl	$10, %ecx	 #,
	call	fputc	 #
.L2:
 # print.c:35: 	if (len == 0) {
	cmpq	$0, 40(%rbp)	 #, len
	jne	.L3	 #,
 # print.c:36: 		printf("len is zero.\n\n");
	leaq	.LC0(%rip), %rax	 #, tmp143
	movq	%rax, %rcx	 # tmp143,
	call	puts	 #
 # print.c:37: 		return;
	jmp	.L1	 #
.L3:
 # print.c:41: 	for (i = 0; i < len; i++) {
	movl	$0, -4(%rbp)	 #, i
 # print.c:41: 	for (i = 0; i < len; i++) {
	jmp	.L5	 #
.L14:
 # print.c:43: 		if (new_line) {
	cmpl	$0, -12(%rbp)	 #, new_line
	je	.L6	 #,
 # print.c:44: 			printf("0x%p: ", (uint8_t *)buf + i);
	movl	-4(%rbp), %edx	 # i, _5
	movq	32(%rbp), %rax	 # buf, tmp144
	addq	%rax, %rdx	 # tmp144, _6
	leaq	.LC1(%rip), %rax	 #, tmp145
	movq	%rax, %rcx	 # tmp145,
	call	printf	 #
 # print.c:45: 			new_line = 0;
	movl	$0, -12(%rbp)	 #, new_line
.L6:
 # print.c:49: 		if (i % 8 == 0 && i % 16 != 0) {
	movl	-4(%rbp), %eax	 # i, tmp146
	andl	$7, %eax	 #, _7
 # print.c:49: 		if (i % 8 == 0 && i % 16 != 0) {
	testl	%eax, %eax	 # _7
	jne	.L7	 #,
 # print.c:49: 		if (i % 8 == 0 && i % 16 != 0) {
	movl	-4(%rbp), %eax	 # i, tmp147
	andl	$15, %eax	 #, _8
 # print.c:49: 		if (i % 8 == 0 && i % 16 != 0) {
	testl	%eax, %eax	 # _8
	je	.L7	 #,
 # print.c:50: 			printf(" ");
	movl	$32, %ecx	 #,
	call	putchar	 #
.L7:
 # print.c:54: 		printf("%02X ", ((uint8_t *)buf)[i]);
	movl	-4(%rbp), %edx	 # i, _9
	movq	32(%rbp), %rax	 # buf, tmp148
	addq	%rdx, %rax	 # _9, _10
	movzbl	(%rax), %eax	 # *_10, _11
 # print.c:54: 		printf("%02X ", ((uint8_t *)buf)[i]);
	movzbl	%al, %eax	 # _11, _12
	leaq	.LC2(%rip), %rcx	 #, tmp149
	movl	%eax, %edx	 # _12,
	call	printf	 #
 # print.c:57: 		if ((i + 1) % 16 == 0) {
	movl	-4(%rbp), %eax	 # i, tmp150
	addl	$1, %eax	 #, _13
 # print.c:57: 		if ((i + 1) % 16 == 0) {
	andl	$15, %eax	 #, _14
 # print.c:57: 		if ((i + 1) % 16 == 0) {
	testl	%eax, %eax	 # _14
	jne	.L8	 #,
 # print.c:58: 			printf("   ");
	leaq	.LC3(%rip), %rax	 #, tmp151
	movq	%rax, %rcx	 # tmp151,
	call	printf	 #
 # print.c:59: 			for (j = i - 15; j <= i; j++) {
	movl	-4(%rbp), %eax	 # i, tmp155
	subl	$15, %eax	 #, j_94
	movl	%eax, -8(%rbp)	 # j_94, j
 # print.c:59: 			for (j = i - 15; j <= i; j++) {
	jmp	.L9	 #
.L13:
 # print.c:60: 				if (((uint8_t *)buf)[j] < 0x20 || ((uint8_t *)buf)[j] > 0x7E) {
	movl	-8(%rbp), %edx	 # j, _15
	movq	32(%rbp), %rax	 # buf, tmp156
	addq	%rdx, %rax	 # _15, _16
	movzbl	(%rax), %eax	 # *_16, _17
 # print.c:60: 				if (((uint8_t *)buf)[j] < 0x20 || ((uint8_t *)buf)[j] > 0x7E) {
	cmpb	$31, %al	 #, _17
	jbe	.L10	 #,
 # print.c:60: 				if (((uint8_t *)buf)[j] < 0x20 || ((uint8_t *)buf)[j] > 0x7E) {
	movl	-8(%rbp), %edx	 # j, _18
	movq	32(%rbp), %rax	 # buf, tmp157
	addq	%rdx, %rax	 # _18, _19
	movzbl	(%rax), %eax	 # *_19, _20
 # print.c:60: 				if (((uint8_t *)buf)[j] < 0x20 || ((uint8_t *)buf)[j] > 0x7E) {
	cmpb	$126, %al	 #, _20
	jbe	.L11	 #,
.L10:
 # print.c:61: 					printf(".");
	movl	$46, %ecx	 #,
	call	putchar	 #
	jmp	.L12	 #
.L11:
 # print.c:63: 					printf("%c", ((char *)buf)[j]);
	movl	-8(%rbp), %edx	 # j, _21
	movq	32(%rbp), %rax	 # buf, tmp158
	addq	%rdx, %rax	 # _21, _22
	movzbl	(%rax), %eax	 # *_22, _23
 # print.c:63: 					printf("%c", ((char *)buf)[j]);
	movsbl	%al, %eax	 # _23, _24
	movl	%eax, %ecx	 # _24,
	call	putchar	 #
.L12:
 # print.c:59: 			for (j = i - 15; j <= i; j++) {
	addl	$1, -8(%rbp)	 #, j
.L9:
 # print.c:59: 			for (j = i - 15; j <= i; j++) {
	movl	-8(%rbp), %eax	 # j, tmp159
	cmpl	%eax, -4(%rbp)	 # tmp159, i
	jnb	.L13	 #,
 # print.c:66: 			printf("\n");
	movl	$10, %ecx	 #,
	call	putchar	 #
 # print.c:67: 			new_line = 1;
	movl	$1, -12(%rbp)	 #, new_line
.L8:
 # print.c:41: 	for (i = 0; i < len; i++) {
	addl	$1, -4(%rbp)	 #, i
.L5:
 # print.c:41: 	for (i = 0; i < len; i++) {
	movl	-4(%rbp), %eax	 # i, _25
	cmpq	40(%rbp), %rax	 # len, _25
	jb	.L14	 #,
 # print.c:72: 	if (!new_line) {
	cmpl	$0, -12(%rbp)	 #, new_line
	jne	.L1	 #,
 # print.c:74: 		for (j = i; j % 16 != 0; j++) {
	movl	-4(%rbp), %eax	 # i, tmp160
	movl	%eax, -8(%rbp)	 # tmp160, j
 # print.c:74: 		for (j = i; j % 16 != 0; j++) {
	jmp	.L15	 #
.L17:
 # print.c:75: 			if (j % 8 == 0) {
	movl	-8(%rbp), %eax	 # j, tmp161
	andl	$7, %eax	 #, _26
 # print.c:75: 			if (j % 8 == 0) {
	testl	%eax, %eax	 # _26
	jne	.L16	 #,
 # print.c:76: 				printf(" ");
	movl	$32, %ecx	 #,
	call	putchar	 #
.L16:
 # print.c:78: 			printf("   ");
	leaq	.LC3(%rip), %rax	 #, tmp162
	movq	%rax, %rcx	 # tmp162,
	call	printf	 #
 # print.c:74: 		for (j = i; j % 16 != 0; j++) {
	addl	$1, -8(%rbp)	 #, j
.L15:
 # print.c:74: 		for (j = i; j % 16 != 0; j++) {
	movl	-8(%rbp), %eax	 # j, tmp163
	andl	$15, %eax	 #, _27
 # print.c:74: 		for (j = i; j % 16 != 0; j++) {
	testl	%eax, %eax	 # _27
	jne	.L17	 #,
 # print.c:82: 		printf("   ");
	leaq	.LC3(%rip), %rax	 #, tmp164
	movq	%rax, %rcx	 # tmp164,
	call	printf	 #
 # print.c:83: 		for (j = i - (i % 16); j < i; j++) {
	movl	-4(%rbp), %eax	 # i, tmp168
	andl	$-16, %eax	 #, j_77
	movl	%eax, -8(%rbp)	 # j_77, j
 # print.c:83: 		for (j = i - (i % 16); j < i; j++) {
	jmp	.L18	 #
.L22:
 # print.c:84: 			if (((uint8_t *)buf)[j] < 0x20 || ((uint8_t *)buf)[j] > 0x7E) {
	movl	-8(%rbp), %edx	 # j, _28
	movq	32(%rbp), %rax	 # buf, tmp169
	addq	%rdx, %rax	 # _28, _29
	movzbl	(%rax), %eax	 # *_29, _30
 # print.c:84: 			if (((uint8_t *)buf)[j] < 0x20 || ((uint8_t *)buf)[j] > 0x7E) {
	cmpb	$31, %al	 #, _30
	jbe	.L19	 #,
 # print.c:84: 			if (((uint8_t *)buf)[j] < 0x20 || ((uint8_t *)buf)[j] > 0x7E) {
	movl	-8(%rbp), %edx	 # j, _31
	movq	32(%rbp), %rax	 # buf, tmp170
	addq	%rdx, %rax	 # _31, _32
	movzbl	(%rax), %eax	 # *_32, _33
 # print.c:84: 			if (((uint8_t *)buf)[j] < 0x20 || ((uint8_t *)buf)[j] > 0x7E) {
	cmpb	$126, %al	 #, _33
	jbe	.L20	 #,
.L19:
 # print.c:85: 				printf(".");
	movl	$46, %ecx	 #,
	call	putchar	 #
	jmp	.L21	 #
.L20:
 # print.c:87: 				printf("%c", ((char *)buf)[j]);
	movl	-8(%rbp), %edx	 # j, _34
	movq	32(%rbp), %rax	 # buf, tmp171
	addq	%rdx, %rax	 # _34, _35
	movzbl	(%rax), %eax	 # *_35, _36
 # print.c:87: 				printf("%c", ((char *)buf)[j]);
	movsbl	%al, %eax	 # _36, _37
	movl	%eax, %ecx	 # _37,
	call	putchar	 #
.L21:
 # print.c:83: 		for (j = i - (i % 16); j < i; j++) {
	addl	$1, -8(%rbp)	 #, j
.L18:
 # print.c:83: 		for (j = i - (i % 16); j < i; j++) {
	movl	-8(%rbp), %eax	 # j, tmp172
	cmpl	-4(%rbp), %eax	 # i, tmp172
	jb	.L22	 #,
 # print.c:95: 		if (i % 16) {
	movl	-4(%rbp), %eax	 # i, tmp173
	andl	$15, %eax	 #, _38
 # print.c:95: 		if (i % 16) {
	testl	%eax, %eax	 # _38
	je	.L23	 #,
 # print.c:100: 			for (j = i; j < i + 16 - (i % 16); j++) {
	movl	-4(%rbp), %eax	 # i, tmp174
	movl	%eax, -8(%rbp)	 # tmp174, j
 # print.c:100: 			for (j = i; j < i + 16 - (i % 16); j++) {
	jmp	.L24	 #
.L25:
 # print.c:102: 				printf(".");
	movl	$46, %ecx	 #,
	call	putchar	 #
 # print.c:100: 			for (j = i; j < i + 16 - (i % 16); j++) {
	addl	$1, -8(%rbp)	 #, j
.L24:
 # print.c:100: 			for (j = i; j < i + 16 - (i % 16); j++) {
	movl	-4(%rbp), %eax	 # i, tmp175
	andl	$-16, %eax	 #, _39
	addl	$16, %eax	 #, _40
 # print.c:100: 			for (j = i; j < i + 16 - (i % 16); j++) {
	cmpl	%eax, -8(%rbp)	 # _40, j
	jb	.L25	 #,
.L23:
 # print.c:105: 		printf("\n");
	movl	$10, %ecx	 #,
	call	putchar	 #
	nop	
.L1:
 # print.c:109: }
	addq	$72, %rsp	 #,
	popq	%rbx	 #
	popq	%rbp	 #
	ret	
	.seh_endproc
	.ident	"GCC: (Rev5, Built by MSYS2 project) 15.1.0"
	.def	vfprintf;	.scl	2;	.type	32;	.endef
	.def	fputc;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
