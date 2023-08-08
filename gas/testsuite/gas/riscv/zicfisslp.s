	# Zicfiss
	sspush x1
	sspush x5
	sspopchk x1
	sspopchk x5
	ssload x1
	ssload x5
	sspinc 1
	sspinc 31
	ssprr a0
	ssamoswap t0, t2, (t1)

	# Zicfilp
	lpad 0x111
