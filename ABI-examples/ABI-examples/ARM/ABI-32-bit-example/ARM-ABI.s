		.list
		.equ	sys_exit, 1
		.equ	sys_write, 4

		.global	_start
		.text
_start:
		mov	r0, #1		/* select standard output */
		ldr	r1, =MESG	/* message's address */
		mov	r2, #MESGLEN	/* message's length */
		mov	r7, #sys_write
		swi	#0		/* display message */

		mov	r0, #0		/* exit code 0 */
		mov	r7, #sys_exit
		swi	#0		/* exit program */
MESG:		.ascii	"ARM (32-bit) ABI example\n"
		.equ	MESGLEN, .-MESG
		.end


