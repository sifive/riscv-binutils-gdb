	# Test lpadinfo symbol index computation with extra sections.
	# The additional sections force extra section symbols in the ELF
	# symbol table, which exercises the extra_section_syms calculation
	# in riscv_get_symbol_index().
	.text
	.type	local_func,@function
local_func:
	ret
	.size	local_func, .-local_func

	.globl	global_func
	.type	global_func,@function
global_func:
	ret
	.size	global_func, .-global_func

	.section .mydata1, "a"
	.word 1
	.section .mydata2, "a"
	.word 2
	.section .mydata3, "a"
	.word 3
	.section .mydata4, "a"
	.word 4

	.lpad_info	local_func, "$sFvvE", 0xaaaaa
	.lpad_info	global_func, "$sFiiE", 0xbbbbb
