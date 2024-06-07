	.intel_syntax	noprefix
	.global _start
	.equ	sys_exit, 1
	.equ	sys_write, 4
	.text
_start:
	mov	eax, sys_write	/* write */
	mov	ebx, 1		/* select standard output */
	lea	ecx,MSG		/* message's address */
	mov	edx,MLEN	/* message length */
	int	0x80		/* display message */

	mov	ebx, 0		/* clear ebx */ 
	mov	eax, sys_exit	/* terminate program */ 
	int	0x80 

MLEN:	.long	MSGLEN
MSG:	.ascii	"32-bit X86 ABI program\n"
	.equ	MSGLEN, .-MSG
	.end

