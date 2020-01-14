	.file	"main.c"
	.text
	.comm	buffer,10,8
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$10, %esi
	leaq	buffer(%rip), %rdi
	call	clear_all@PLT
	leaq	8+buffer(%rip), %rax
	movl	$2, %edx
	movl	$43, %esi
	movq	%rax, %rdi
	call	set_all@PLT
	movl	$97, %edx
	movl	$0, %esi
	leaq	buffer(%rip), %rdi
	call	set_value@PLT
	movl	$9, %esi
	leaq	buffer(%rip), %rdi
	call	get_value@PLT
	movb	%al, -5(%rbp)
	movzbl	-5(%rbp), %eax
	addl	$39, %eax
	movsbl	%al, %eax
	movl	%eax, %edx
	movl	$9, %esi
	leaq	buffer(%rip), %rdi
	call	set_value@PLT
	movl	$55, %edx
	movl	$3, %esi
	leaq	buffer(%rip), %rdi
	call	set_value@PLT
	movl	$88, %edx
	movl	$1, %esi
	leaq	buffer(%rip), %rdi
	call	set_value@PLT
	movl	$50, %edx
	movl	$4, %esi
	leaq	buffer(%rip), %rdi
	call	set_value@PLT
	movl	$1, %esi
	leaq	buffer(%rip), %rdi
	call	get_value@PLT
	movb	%al, -5(%rbp)
	movl	$121, %edx
	movl	$2, %esi
	leaq	buffer(%rip), %rdi
	call	set_value@PLT
	movzbl	-5(%rbp), %eax
	subl	$12, %eax
	movsbl	%al, %eax
	movl	%eax, %edx
	movl	$7, %esi
	leaq	buffer(%rip), %rdi
	call	set_value@PLT
	movl	$95, %edx
	movl	$5, %esi
	leaq	buffer(%rip), %rdi
	call	set_value@PLT
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %edx
	leaq	buffer(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	addl	$1, -4(%rbp)
.L2:
	cmpl	$9, -4(%rbp)
	jbe	.L3
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
