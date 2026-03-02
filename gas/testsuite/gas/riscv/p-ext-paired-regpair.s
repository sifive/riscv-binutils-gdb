# Test register pair encoding for P extension
# Register pair operands should encode register_number / 2
# This allows using even registers x0-x30

target:
	# Test nsrai with various even registers including high registers
	nsrai	x14, x10, 1		# rd=x14, rs1p=x10 (encoded as 5)
	nsrai	x14, x20, 1		# rd=x14, rs1p=x20 (encoded as 10)
	nsrai	x14, x30, 1		# rd=x14, rs1p=x30 (encoded as 15)
	nsrai	x14, x0, 1		# rd=x14, rs1p=x0 (encoded as 0)

	# Test pnsrai.b with high registers
	pnsrai.b	x14, x20, 1
	pnsrai.b	x14, x30, 1

	# Test pnsrai.h with high registers
	pnsrai.h	x14, x20, 1
	pnsrai.h	x14, x30, 1

	# Test nsrari with high registers
	nsrari	x14, x20, 1
	nsrari	x14, x30, 1

	# Test nsrli with high registers
	nsrli	x14, x20, 1
	nsrli	x14, x30, 1

	# Test instructions with Wpd (destination pair) using high registers
	pslli.db	x20, x10, 1
	pslli.db	x30, x20, 1

	# Test instructions with both Wpd and Wps using high registers
	pslli.dh	x20, x30, 15
	pslli.dw	x30, x20, 31

	# Test predsum with high registers
	predsum.dbs	x14, x20, x10
	predsum.dhs	x14, x30, x10

