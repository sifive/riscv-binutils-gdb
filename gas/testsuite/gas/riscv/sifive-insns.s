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

	# xsfvqmaccqoq
	sf.vqmaccu.4x8x4 v4, v8, v12
	sf.vqmacc.4x8x4 v4, v8, v12
	sf.vqmaccus.4x8x4 v4, v8, v12
	sf.vqmaccsu.4x8x4 v4, v8, v12
	#.insn r CUSTOM_2, 0x2, 0x79, v4, v8, v12
	#.insn r CUSTOM_2, 0x2, 0x7b, v4, v8, v12
	#.insn r 0x5b, 0x2, 0x7d, v4, v8, v12
	#.insn r 0x5b, 0x2, 0x7f, v4, v8, v12

	# xsfvqmaccdod
	sf.vqmaccu.2x8x2 v4, v8, v12
	sf.vqmacc.2x8x2 v4, v8, v12
	sf.vqmaccus.2x8x2 v4, v8, v12
	sf.vqmaccsu.2x8x2 v4, v8, v12
	#.insn r CUSTOM_2, 0x2, 0x59, v4, v8, v12
	#.insn r CUSTOM_2, 0x2, 0x5b, v4, v8, v12
	#.insn r 0x5b, 0x2, 0x5d, v4, v8, v12
	#.insn r 0x5b, 0x2, 0x5f, v4, v8, v12

	# xsfvfhbfmin
	sf.vfwcvt.f.bf16.v v4, v8
	sf.vfncvt.bf16.f.w v4, v8
	sf.vfwcvt.f.bf16.v v4, v8, v0.t
	sf.vfncvt.bf16.f.w v4, v8, v0.t
	#.insn r 0x57, 0x1, 0x25, v4, a3, v8
	#.insn r 0x57, 0x1, 0x25, v4, t4, v8
	#.insn r 0x57, 0x1, 0x24, v4, a3, v8
	#.insn r 0x57, 0x1, 0x24, v4, t4, v8

	# xsfvfwmaccqqq
	sf.vfwmacc.4x4x4 v4, v8, v12
	#.insn r CUSTOM_2, 0x1, 0x3c, v4, v8, v12

	# xsfvfnrclipxfqf
	sf.vfnrclip.xu.f.qf v4, v8, f12
	sf.vfnrclip.x.f.qf  v4, v8, f12
	#.insn r CUSTOM_2, 0x1, 0x22, v4, f12, v8
	#.insn r 0x57, 0x1, 0x23, v4, f12, v8
