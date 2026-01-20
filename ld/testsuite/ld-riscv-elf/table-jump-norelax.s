	.section .text

	.globl _start
	.type	_start, %function
_start:
	# These calls should be converted to cm.jalt (have R_RISCV_RELAX)
	.rept 70
	call foo_global
	.endr

	# This call should NOT be converted - it has .option norelax
	# The AUIPC+JALR must remain intact
	.option push
	.option norelax
	call norelax_target
	.option pop

	# More relaxable calls
	.rept 10
	call foo_global
	.endr

	ret

	.globl  foo_global
	.type	foo_global, %function
foo_global:
	ret

	.globl  norelax_target
	.type	norelax_target, %function
norelax_target:
	ret

