target:
	zext.h	a0, a1

.ifdef __64_bit__
	zext.w  a0, a1
.endif
