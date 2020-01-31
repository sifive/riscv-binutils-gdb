	# mnret
	mnret
	.insn r SYSTEM, 0x0, 0x38, x0, x0, x2

	# cache control
	cflush.d.l1	x10
	cdiscard.d.l1	x10
	cflush.i.l1
	.insn i SYSTEM, 0, x0, x10, -0x40
	.insn i SYSTEM, 0, x0, x10, -0x3E
	.insn i SYSTEM, 0, x0, x0,  -0x3F
