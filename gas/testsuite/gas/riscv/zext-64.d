#as: -march=rv64ib -defsym __64_bit__=1
#source: zext.s
#objdump: -d

.*:[ 	]+file format .*


Disassembly of section .text:

0+000 <target>:
[ 	]+0:[ 	]+0805c53b[ 	]+zext.h[ 	]+a0,a1
[ 	]+4:[ 	]+0805853b[ 	]+zext.w[ 	]+a0,a1
