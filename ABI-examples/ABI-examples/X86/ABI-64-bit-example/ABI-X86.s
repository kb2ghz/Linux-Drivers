	.intel_syntax	noprefix
	.global _start
	.equ	sys_exit, 60
	.equ	sys_write, 1
	.text
_start:
	mov	rax, sys_write	/* write */
	mov	rdi, 1		/* select standard output */
	lea	rsi,MSG		/* message's address */
	mov	rdx,MLEN	/* message length */
	syscall			/* display message */

	mov	rdi, 0		/* clear ebx */ 
	mov	rax, sys_exit	/* terminate program */ 
	syscall 

MLEN:	.quad	MSGLEN
MSG:	.ascii	"64-bit X86 ABI program\n"
	.equ	MSGLEN, .-MSG
	.end

