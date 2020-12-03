#as: -march=rv64ib -defsym __64_bit__=1
#source: zext.s
#objdump: -d -Mno-aliases

.*:[ 	]+file format .*


Disassembly of section .text:

0+000 <target>:
[ 	]+0:[ 	]+0805c53b[ 	]+packw[ 	]+a0,a1,zero
[ 	]+4:[ 	]+0805853b[ 	]+addu.w[ 	]+a0,a1,zero
