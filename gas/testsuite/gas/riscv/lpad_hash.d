#as: -march=rv64izicfilp
#source: lpad_hash.s
#objdump: -dr

.*:[ 	]+file format .*


Disassembly of section .text:

0+000 <foo>:
[ 	]+0:[ 	]+4b687017[ 	]+lpad[ 	]+0x4b687
[ 	]+0:[ 	]+R_RISCV_LPAD[ 		]+\*ABS\*
[ 	]+0:[ 	]+R_RISCV_RELAX[ 	]+\*ABS\*
[ 	]+4:[ 	]+4b6873b7[ 	]+lui[ 	]+t2,0x4b687
[ 	]+8:[ 	]+5e000017[ 	]+lpad[ 	]+0x5e000
[ 	]+8:[ 	]+R_RISCV_LPAD[ 		]+\*ABS\*
[ 	]+8:[ 	]+R_RISCV_RELAX[ 	]+\*ABS\*
