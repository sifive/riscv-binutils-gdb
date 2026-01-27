	# Test lpadinfo with multiple local functions.
	# Verifies that the local symbol index ordering is correctly
	# computed when there are several local function symbols.
	.text
	.type	local_a,@function
local_a:
	ret
	.size	local_a, .-local_a

	.type	local_b,@function
local_b:
	ret
	.size	local_b, .-local_b

	.type	local_c,@function
local_c:
	ret
	.size	local_c, .-local_c

	.globl	global_func
	.type	global_func,@function
global_func:
	ret
	.size	global_func, .-global_func

	.lpad_info	local_a, "$sFvvE", 0x11111
	.lpad_info	local_b, "$sFiiE", 0x22222
	.lpad_info	local_c, "$sFddE", 0x33333
	.lpad_info	global_func, "$sFccE", 0x44444
