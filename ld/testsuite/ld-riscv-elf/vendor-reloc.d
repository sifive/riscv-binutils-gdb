#source: vendor-reloc.s
#as: -march=rv64i -mabi=lp64
#ld: -melf64lriscv --no-relax
#objdump: -d

# Test that the linker can handle R_RISCV_VENDOR relocation.
# R_RISCV_VENDOR is a marker relocation that indicates the following
# relocation is vendor-specific (e.g., R_RISCV_SIFIVE_*).
# The linker should bypass this marker relocation.

.*:[ 	]+file format .*


Disassembly of section .text:

[0-9a-f]+ <_start>:
[ 	]+[0-9a-f]+:[ 	]+[0-9a-f]+[ 	]+nop

