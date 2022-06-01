	.attribute arch, "rv32iv_xsfvqmaccqoq_xsfvqmaccdod_xsfvfhbfmin_xsfvfwmaccqqq_xsfvfnrclipxfqf_xsfvcp"
	.option push
	.option arch, rv32i
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
	.option push
	.option arch, +xsfvqmaccqoq
	sf.vqmaccu.4x8x4 v4, v8, v12
	sf.vqmacc.4x8x4 v4, v8, v12
	sf.vqmaccus.4x8x4 v4, v8, v12
	sf.vqmaccsu.4x8x4 v4, v8, v12
	#.insn r CUSTOM_2, 0x2, 0x79, v4, v8, v12
	#.insn r CUSTOM_2, 0x2, 0x7b, v4, v8, v12
	#.insn r 0x5b, 0x2, 0x7d, v4, v8, v12
	#.insn r 0x5b, 0x2, 0x7f, v4, v8, v12
	.option pop

	# xsfvqmaccdod
	.option push
	.option arch, +xsfvqmaccdod
	sf.vqmaccu.2x8x2 v4, v8, v12
	sf.vqmacc.2x8x2 v4, v8, v12
	sf.vqmaccus.2x8x2 v4, v8, v12
	sf.vqmaccsu.2x8x2 v4, v8, v12
	#.insn r CUSTOM_2, 0x2, 0x59, v4, v8, v12
	#.insn r CUSTOM_2, 0x2, 0x5b, v4, v8, v12
	#.insn r 0x5b, 0x2, 0x5d, v4, v8, v12
	#.insn r 0x5b, 0x2, 0x5f, v4, v8, v12
	.option pop

	# xsfvfhbfmin
	.option push
	.option arch, +xsfvfhbfmin
	sf.vfwcvt.f.bf16.v v4, v8
	sf.vfncvt.bf16.f.w v4, v8
	sf.vfwcvt.f.bf16.v v4, v8, v0.t
	sf.vfncvt.bf16.f.w v4, v8, v0.t
	#.insn r 0x57, 0x1, 0x25, v4, a3, v8
	#.insn r 0x57, 0x1, 0x25, v4, t4, v8
	#.insn r 0x57, 0x1, 0x24, v4, a3, v8
	#.insn r 0x57, 0x1, 0x24, v4, t4, v8
	.option pop

	# xsfvfwmaccqqq
	.option push
	.option arch, +xsfvfwmaccqqq
	sf.vfwmacc.4x4x4 v4, v8, v12
	#.insn r CUSTOM_2, 0x1, 0x3c, v4, v8, v12
	.option pop

	# xsfvfnrclipxfqf
	.option push
	.option arch, +xsfvfnrclipxfqf
	sf.vfnrclip.xu.f.qf v4, v8, f12
	sf.vfnrclip.x.f.qf  v4, v8, f12
	#.insn r CUSTOM_2, 0x1, 0x22, v4, f12, v8
	#.insn r 0x57, 0x1, 0x23, v4, f12, v8
	.option pop

	# xsfvcp
	.option push
	.option arch, +xsfvcp
	sf.vc.x 0x3, 0xf, 0x1f, a1
	sf.vc.i 0x3, 0xf, 0x1f, 15
	sf.vc.vv 0x3, 0x1f, v2, v1
	sf.vc.xv 0x3, 0x1f, v2, a1
	sf.vc.iv 0x3, 0x1f, v2, 15
	sf.vc.fv 0x1, 0x1f, v2, fa1
	sf.vc.vvv 0x3, v0, v2, v1
	sf.vc.xvv 0x3, v0, v2, a1
	sf.vc.ivv 0x3, v0, v2, 15
	sf.vc.fvv 0x1, v0, v2, fa1
	sf.vc.vvw 0x3, v0, v2, v1
	sf.vc.xvw 0x3, v0, v2, a1
	sf.vc.ivw 0x3, v0, v2, 15
	sf.vc.fvw 0x1, v0, v2, fa1
	sf.vc.v.x 0x3, 0xf, v0, a1
	sf.vc.v.i 0x3, 0xf, v0, 15
	sf.vc.v.vv 0x3, v0, v2, v1
	sf.vc.v.xv 0x3, v0, v2, a1
	sf.vc.v.iv 0x3, v0, v2, 15
	sf.vc.v.fv 0x1, v0, v2, fa1
	sf.vc.v.vvv 0x3, v0, v2, v1
	sf.vc.v.xvv 0x3, v0, v2, a1
	sf.vc.v.ivv 0x3, v0, v2, 15
	sf.vc.v.fvv 0x1, v0, v2, fa1
	sf.vc.v.vvw 0x3, v0, v2, v1
	sf.vc.v.xvw 0x3, v0, v2, a1
	sf.vc.v.ivw 0x3, v0, v2, 15
	sf.vc.v.fvw 0x1, v0, v2, fa1
	.option pop

	.option pop
