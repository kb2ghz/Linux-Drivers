		.list
		.equ	sys_exit, 93
		.equ	sys_write, 64

		.global	_start
		.text
_start:
		mov	x0, 1		/* select standard output */
		ldr	x1, =MESG	/* message's address */
		mov	x2, MESGLEN	/* message's length */
		mov	w8, sys_write
		svc	#0		/* display message */

		mov	x0, 0		/* clear x0 and x1 */	
		mov	x1, 0
		mov	w8, sys_exit
		svc	#0		/* end program */

MESG:		.ascii	"ARM64 ABI example\n"
		.equ	MESGLEN, .-MESG
		.end

