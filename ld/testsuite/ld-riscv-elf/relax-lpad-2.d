#source: relax-lpad-2.s
#as: -march=rv64gc_zicfilp
#ld: --relax --relax-lpad
#objdump: -d

.*:[ 	]+file format .*


Disassembly of section .text:

0+[0-9a-f]+ <_start>:
.*:[ 	]+[0-9a-f]+[ 	]+lpad[ 	]+0x0
.*:[ 	]+[0-9a-f]+[ 	]+j[ 	]+.*<foo>

0+[0-9a-f]+ <foo>:
.*:[ 	]+[0-9a-f]+[ 	]+lpad[ 	]+0x0
.*:[ 	]+[0-9a-f]+[ 	]+ret
