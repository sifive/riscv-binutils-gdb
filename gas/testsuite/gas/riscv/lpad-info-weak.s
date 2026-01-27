	# Test lpadinfo with mixed symbol bindings: local, global, and weak.
	# Verifies that riscv_get_symbol_index() correctly handles weak
	# symbols (treated as globals in the ELF symbol ordering).
	.text
	.globl	_start
	.type	_start,@function
_start:
	ret
	.size	_start, .-_start

	.type	local_a,@function
local_a:
	ret
	.size	local_a, .-local_a

	.globl	global_a
	.type	global_a,@function
global_a:
	ret
	.size	global_a, .-global_a

	.weak	weak_func
	.type	weak_func,@function
weak_func:
	ret
	.size	weak_func, .-weak_func

	.lpad_info	local_a, "$sFvvE", 0x11111
	.lpad_info	global_a, "$sFddE", 0x33333
	.lpad_info	weak_func, "$sFccE", 0x44444
