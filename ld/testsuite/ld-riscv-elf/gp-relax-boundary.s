# Test case for GP relaxation boundary condition (SCT-5044).
#
# This test verifies that the linker correctly handles symbols at
# exactly the GP range boundary.  The GP range is [-2048, 2047], so
# a symbol at GP+2048 is exactly 1 byte outside the valid range.
#
# The linker must NOT relax accesses to such symbols to GP-relative
# addressing, as that would cause overflow errors.
#
# This test ensures the linker correctly rejects GP relaxation for
# boundary_var which is placed at exactly GP+2048 by the linker script.

	.text
	.globl _start
	.type _start, @function
_start:
	# Access boundary_var at GP+2048 - must NOT be GP-relaxed
.L1:
	auipc	a0, %pcrel_hi(boundary_var)
	addi	a0, a0, %pcrel_lo(.L1)

	# Access gp_data which is within GP range - can be GP-relaxed
.L2:
	auipc	a1, %pcrel_hi(gp_data)
	addi	a1, a1, %pcrel_lo(.L2)

	ret
	.size _start, . - _start

	.section .sdata,"aw",@progbits
	.globl gp_data
	.type gp_data, @object
gp_data:
	.word 0x12345678
	.size gp_data, . - gp_data

	.section .data,"aw",@progbits
	.globl boundary_var
	.type boundary_var, @object
boundary_var:
	.word 0xdeadbeef
	.size boundary_var, . - boundary_var

