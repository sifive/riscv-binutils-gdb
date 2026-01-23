	# Test that the linker can handle R_RISCV_VENDOR relocation.
	# R_RISCV_VENDOR is a marker relocation that indicates the following
	# relocation is vendor-specific (e.g., R_RISCV_SIFIVE_*).
	# The linker should bypass this marker relocation.

	.text
	.global _start
_start:
inst:
	.reloc inst, R_RISCV_VENDOR, SIFIVE
	nop

	.data
	.global SIFIVE
SIFIVE:
	.dword 0

