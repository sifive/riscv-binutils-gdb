	# Test that .option norelax inside .option push/pop correctly
	# suppresses R_RISCV_RELAX for branch and jump instructions.

	.text
	.globl	foo
	.type	foo, @function
foo:
	nop

	# Jump with .option norelax - should NOT have R_RISCV_RELAX.
.option push
.option norvc
.option norelax
	j	bar
.option pop

	# Jump without .option norelax - should have R_RISCV_RELAX.
.option push
.option norvc
	j	bar
.option pop

	# Branch with .option norelax - should NOT have R_RISCV_RELAX.
.option push
.option norvc
.option norelax
	beq	a0, a1, bar
.option pop

	# Branch without .option norelax - should have R_RISCV_RELAX.
.option push
.option norvc
	beq	a0, a1, bar
.option pop

	ret
	.size	foo, .-foo
