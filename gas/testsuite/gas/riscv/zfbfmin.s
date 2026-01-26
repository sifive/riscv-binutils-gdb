target:
	# fcvt.bf16.s
	fcvt.bf16.s	fa0, fa1
	fcvt.bf16.s	fa0, fa1, rne
	# fcvt.s.bf16
	fcvt.s.bf16	fa0, fa1
	fcvt.s.bf16	fa0, fa1, dyn
	# Shared instructions with zfhmin
	flh	fa0, 0(a0)
	fsh	fa0, 0(a0)
	fmv.x.h	a0, fa0
	fmv.h.x	fa0, a0
