		.equ	sys_exit, 93
		.equ	sys_write, 64

		.global	_start
		.text
_start:
		addiw	a0,zero,1		# select standard output
		lw	a1, BUFPTR		# buffer's address
		lw	a2, LEN			# message's length
		addiw	a7,zero,sys_write	# display message
		ecall

		addiw	a7,zero,sys_exit	# end program
		ecall		

MESG:		.ascii "RISC-V ABI program\n"
		.equ	MESGLEN, .-MESG
LEN:		.word	MESGLEN
BUFPTR:		.word	MESG
		.end

