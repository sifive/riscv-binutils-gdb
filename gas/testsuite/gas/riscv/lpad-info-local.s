	.text
	.globl global_func
	.type global_func,@function
global_func:
	call local_func
	ret
	.size global_func, .-global_func

	# Local function (not .globl)
	.type local_func,@function
local_func:
	lpad 0x33333
	ret
	.size local_func, .-local_func

	# Lpadinfo for both global and local symbols
	.lpad_info global_func, "$sFvvE", 0x12345
	.lpad_info local_func, "$sFiiE", 0x33333
