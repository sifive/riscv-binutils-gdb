	.insn i 0x73, 0, x0, x10, -0x40
	.insn i 0x73, 0, x0, x10, -0x3E
	.insn i 0x73, 0, x0, x0,  -0x3F

	cflush.d.l1   x10
	cdiscard.d.l1 x10
	cflush.i.l1
