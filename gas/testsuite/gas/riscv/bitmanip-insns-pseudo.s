	rev.p	a0, a1
	rev2.n	a0, a1
	rev.n	a0, a1
	rev4.b	a0, a1
	rev2.b	a0, a1
	rev.b	a0, a1
	rev8.h	a0, a1
	rev4.h	a0, a1
	rev2.h	a0, a1
	rev.h	a0, a1
	rev16	a0, a1
	rev8	a0, a1
	rev4	a0, a1
	rev2	a0, a1
	rev	a0, a1

	orc.p	a0, a1
	orc2.n	a0, a1
	orc.n	a0, a1
	orc4.b	a0, a1
	orc2.b	a0, a1
	orc.b	a0, a1
	orc8.h	a0, a1
	orc4.h	a0, a1
	orc2.h	a0, a1
	orc.h	a0, a1
	orc16	a0, a1
	orc8	a0, a1
	orc4	a0, a1
	orc2	a0, a1
	orc	a0, a1

	zip.n	a0, a1
	zip2.b	a0, a1
	zip.b	a0, a1
	zip4.h	a0, a1
	zip2.h	a0, a1
	zip.h	a0, a1
	zip8	a0, a1
	zip4	a0, a1
	zip2	a0, a1
	zip	a0, a1

	unzip.n		a0, a1
	unzip2.b	a0, a1
	unzip.b		a0, a1
	unzip4.h	a0, a1
	unzip2.h	a0, a1
	unzip.h		a0, a1
	unzip8		a0, a1
	unzip4		a0, a1
	unzip2		a0, a1
	unzip		a0, a1

.ifdef __64_bit__
	rev16.w	a0, a1
	rev8.w	a0, a1
	rev4.w	a0, a1
	rev2.w	a0, a1
	rev.w	a0, a1
	rev32	a0, a1

	orc16.w	a0, a1
	orc8.w	a0, a1
	orc4.w	a0, a1
	orc2.w	a0, a1
	orc.w	a0, a1
	orc32	a0, a1

	zip8.w	a0, a1
	zip4.w	a0, a1
	zip2.w	a0, a1
	zip.w	a0, a1
	zip16	a0, a1

	unzip8.w	a0, a1
	unzip4.w	a0, a1
	unzip2.w	a0, a1
	unzip.w		a0, a1
	unzip16		a0, a1
.endif
