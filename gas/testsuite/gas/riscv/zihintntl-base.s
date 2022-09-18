target:
	add	x0, x0, x2      # ntl.p1
	sb	s11, 2*0x8(t0)
	add	x0, x0, x3      # ntl.pall
	sb	s11, 2*0x9(t0)
	add	x0, x0, x4      # ntl.s1
	sb	s11, 2*0xa(t0)
	add	x0, x0, x5      # ntl.all
	sb	s11, 2*0xb(t0)
	c.add	x0, x2          # c.ntl.p1
	sb	s11, 2*0xc(t0)
	c.add	x0, x3          # c.ntl.pall
	sb	s11, 2*0xd(t0)
	c.add	x0, x4          # c.ntl.s1
	sb	s11, 2*0xe(t0)
	c.add	x0, x5          # c.ntl.all
	sb	s11, 2*0xf(t0)
