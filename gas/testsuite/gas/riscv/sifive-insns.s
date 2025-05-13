	.attribute arch, "rv32iv"
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

	# xscease
	.option push
	.option arch, +xsfcease1p0
	sf.cease
	.option pop

	# xsfvqmaccqoq
	.option push
	.option arch, +xsfvqmaccqoq
	sf.vqmaccu.4x8x4 v4, v8, v12
	sf.vqmacc.4x8x4 v4, v8, v12
	sf.vqmaccus.4x8x4 v4, v8, v12
	sf.vqmaccsu.4x8x4 v4, v8, v12
	.option pop

	# xsfvqmaccdod
	.option push
	.option arch, +xsfvqmaccdod
	sf.vqmaccu.2x8x2 v4, v8, v12
	sf.vqmacc.2x8x2 v4, v8, v12
	sf.vqmaccus.2x8x2 v4, v8, v12
	sf.vqmaccsu.2x8x2 v4, v8, v12
	.option pop

	# xsfvfnrclipxfqf
	.option push
	.option arch, +xsfvfnrclipxfqf
	sf.vfnrclip.xu.f.qf v4, v8, f12
	sf.vfnrclip.x.f.qf  v4, v8, f12
	.option pop

	# cache control
	cflush.d.l1 	x10
	cdiscard.d.l1 	x10
	cflush.i.l1
	.insn 	i 	SYSTEM, 	0, 	x0, 	x10, 	-0x40
	.insn 	i 	SYSTEM, 	0, 	x0, 	x10, 	-0x3E
	.insn 	i 	SYSTEM, 	0, 	x0, 	x0, 	-0x3F

	# xsfvfhbfmin
	.option push
	.option arch, +v
	.option arch, +xsfvfhbfmin
	sf.vfwcvt.f.bf16.v v4, v8
	sf.vfncvt.bf16.f.w v4, v8
	sf.vfwcvt.f.bf16.v v4, v8, v0.t
	sf.vfncvt.bf16.f.w v4, v8, v0.t
	.option pop

	# xsfvfwmaccqqq
	.option push
	.option arch, +v
	.option arch, +xsfvfwmaccqqq
	sf.vfwmacc.4x4x4 v4, v8, v12
	.option pop

        # xsfvfexpa
	.option push
	.option arch, +xsfvfexpa
        sf.vfexpa.v v2, v5, v0.t
        .option pop

        # xsfvfexpa64e
	.option push
	.option arch, +xsfvfexpa64e
        sf.vfexpa.v v2, v5, v0.t
        .option pop

        # xsfvfexp32e, xsfvfexp16e, xsfvfbfexp16e
	.option push
	.option arch, +xsfvfexp32e
        sf.vfexp.v v2, v5, v0.t
        sf.vfexp.v v2, v5
        .option pop

	.option push
	.option arch, +xsfvfexp16e
        sf.vfexp.v v2, v5, v0.t
        sf.vfexp.v v2, v5
        .option pop

	.option push
	.option arch, +xsfvfbfexp16e
        sf.vfexp.v v2, v5, v0.t
        sf.vfexp.v v2, v5
        .option pop

        # xsfvfbfa
        .option push
        .option arch, +xsfvfbfa
        vsetvli a0, a1, e8alt, m1, ta, ma
        vsetvli a0, a1, e16alt, m1, ta, ma
        vsetivli a0, 0xb, e8alt,  m2
        vsetivli a0, 0xb, e16alt,  m2
        .option pop

	# xsfsci

	.option push
	.option arch, +xsfsci
	sf.sci.0.r 0, 0, a0, a1, a2
	sf.sci.0.r 1, 63, a0, a1, a2
	sf.sci.1.r 2, 64, a0, a1, a2
	sf.sci.1.r 3, 45, a0, a1, a2
	sf.sci.2.r 4, 10, a0, a1, a2
	sf.sci.2.r 5, 87, a0, a1, a2
	sf.sci.3.r 0, 0, a0, a1, a2
	sf.sci.3.r 6, 127, a0, a1, a2

	sf.sci.0.i 0, a2, a3, 1234
	sf.sci.1.i 1, a3, a4, 2048
	sf.sci.2.i 2, a4, a5, 2047
	sf.sci.3.i 3, a5, a6, 4095

	sf.sci.0.u a2, 1048575
	sf.sci.1.u a3, 0
	sf.sci.2.u a4, 123456
	sf.sci.3.u a5, 4095

	sf.sci.0.x 33554431
	sf.sci.1.x 0
	sf.sci.2.x 123456
	sf.sci.3.x 4095	
	.option pop
