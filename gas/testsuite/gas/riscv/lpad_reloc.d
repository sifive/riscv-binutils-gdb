#as: -march=rv64izicfilp
#source: lpad_reloc.s
#objdump: -dr

.*:[ 	]+file format .*


Disassembly of section .text:

0+000 <foo>:
[ 	]+0:[ 	]+00000017[ 	]+lpad[ 	]+0x0
[ 	]+0:[ 	]+R_RISCV_LPAD[ 		]+\*ABS\*
[ 	]+0:[ 	]+R_RISCV_RELAX[ 	]+\*ABS\*
[ 	]+4:[ 	]+00001017[ 	]+lpad[ 	]+0x1
[ 	]+4:[ 	]+R_RISCV_LPAD[ 		]+\*ABS\*
[ 	]+4:[ 	]+R_RISCV_RELAX[ 	]+\*ABS\*
[ 	]+8:[ 	]+00064017[ 	]+lpad[ 	]+0x64
[ 	]+8:[ 	]+R_RISCV_LPAD[ 		]+\*ABS\*
[ 	]+8:[ 	]+R_RISCV_RELAX[ 	]+\*ABS\*
