	# ZBA
	sh1add	a0, a1, a2
	sh2add	a0, a1, a2
	sh3add	a0, a1, a2

.ifdef __64_bit__
	slliu.w		a0, a1, 1
	slliu.w		a0, a1, 63
	addu.w		a0, a1, a2
	sh1addu.w	a0, a1, a2
	sh2addu.w	a0, a1, a2
	sh3addu.w	a0, a1, a2
.endif

	# ZBB
	clz	a0, a1
	ctz	a0, a1
	pcnt	a0, a1
	min	a0, a1, a2
	max	a0, a1, a2
	minu	a0, a1, a2
	maxu	a0, a1, a2
	andn	a0, a1, a2
	orn	a0, a1, a2
	xor	a0, a1, a2
	roli	a0, a1, 1
	roli	a0, a1, 31
	rol	a0, a1, a2
	rol	a0, a1, 1
	rol	a0, a1, 31
	rori	a0, a1, 1
	rori	a0, a1, 31
	ror	a0, a1, a2
	ror	a0, a1, 1
	ror	a0, a1, 31
	sext.b	a0, a1
	sext.h	a0, a1

.ifdef __64_bit__
	clzw	a0, a1
	ctzw	a0, a1
	pcntw	a0, a1
	roli	a0, a1, 63
	rol	a0, a1, 63
	rori	a0, a1, 63
	ror	a0, a1, 63
	roliw	a0, a1, 1
	roliw	a0, a1, 31
	roriw	a0, a1, 1
	roriw	a0, a1, 31
	rolw	a0, a1, a2
	rolw	a0, a1, 1
	rolw	a0, a1, 31
	rorw	a0, a1, a2
	rorw	a0, a1, 1
	rorw	a0, a1, 31
.endif
