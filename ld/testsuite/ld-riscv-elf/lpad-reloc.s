	.option nopic
	.text
	.align 1
	.globl _start
	.type _start, @function
_start:
	lpad 0
	ret
	.size _start, .-_start
