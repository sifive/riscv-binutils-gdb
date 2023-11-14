	# Zicfiss
	sspush x1
	sspush x5
	sspopchk x1
	sspopchk x5
	ssrdp a0
        ssamoswap.d       a0, a0, 0(a0)
        ssamoswap.d       a0, a0, (a0)
        ssamoswap.d.aq    a0, a0, 0(a0)
        ssamoswap.d.aq    a0, a0, (a0)
        ssamoswap.d.rl    a0, a0, 0(a0)
        ssamoswap.d.rl    a0, a0, (a0)
        ssamoswap.d.aqrl  a0, a0, 0(a0)
        ssamoswap.d.aqrl  a0, a0, (a0)

	# Zicfilp
	lpad 0x111
