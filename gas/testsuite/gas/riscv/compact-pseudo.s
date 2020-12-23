.section .text.rv32
# Don't set the pseudo gp, so use the gp directly
rv32_gp:
	la.got.gprel	a0, foo
	lla.gprel	a0, foo
	la.tls.gd.gprel	a0, foo
	la.tls.ie.gprel	a0, foo
	lb.gprel	a0, foo
	lh.gprel	a0, foo
	lw.gprel	a0, foo
	lbu.gprel	a0, foo
	lhu.gprel	a0, foo
	flh.gprel	fa0, foo, a1
	flw.gprel	fa0, foo, a1
	sb.gprel	a0, foo, a1
	sh.gprel	a0, foo, a1
	sw.gprel	a0, foo, a1
	fsh.gprel	fa0, foo, a1
	fsw.gprel	fa0, foo, a1

# Use a2 as the pseudo gp
rv32_pseudo_gp:
	la.got.gprel	a0, foo, a2
	lla.gprel	a0, foo, a2
	la.tls.gd.gprel	a0, foo, a2
	la.tls.ie.gprel	a0, foo, a2
	lb.gprel	a0, foo, a2
	lh.gprel	a0, foo, a2
	lw.gprel	a0, foo, a2
	lbu.gprel	a0, foo, a2
	lhu.gprel	a0, foo, a2
	flh.gprel	fa0, foo, a1, a2
	flw.gprel	fa0, foo, a1, a2
	sb.gprel	a0, foo, a1, a2
	sh.gprel	a0, foo, a1, a2
	sw.gprel	a0, foo, a1, a2
	fsh.gprel	fa0, foo, a1, a2
	fsw.gprel	fa0, foo, a1, a2

.ifdef __64_bit__
.section .text.rv64
rv64_gp:
	lwu.gprel	a0, foo
	ld.gprel	a0, foo
	fld.gprel	fa0, foo, a1
	sd.gprel	a0, foo, a1
	fsd.gprel	fa0, foo, a1
rv64_pseudo_gp:
	lwu.gprel	a0, foo, a2
	ld.gprel	a0, foo, a2
	fld.gprel	fa0, foo, a1, a2
	sd.gprel	a0, foo, a1, a2
	fsd.gprel	fa0, foo, a1, a2
.endif
