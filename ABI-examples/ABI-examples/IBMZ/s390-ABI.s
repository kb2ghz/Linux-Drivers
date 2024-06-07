	.list
	.equ	sys_exit, 1
	.equ	sys_write, 4

	.global	_start
	
	.text
_start:
	BALR	%r14, %r0		# set R14 to _start + 2
	LGR	%r3, %r14
	LGFI	%r2, 1			# select standard out
	LA	%r1, MSGOFFSET
	AGR	%r3, %r1		# compute message's address
	LA	%r4, MESGLEN		# message length
	SVC	sys_write		# output message

	XGR	%r2, %r2		# clear R2
	LA	%r1, sys_exit
	SVC	0			# terminate program

MESG:	.ascii  "S390 ABI example program\n"
	.equ	MESGLEN, .-MESG
	.equ	MSGOFFSET, MESG - _start - 2
	.end

