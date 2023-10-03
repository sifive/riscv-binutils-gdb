#as: -march=rv64gc_zicfiss_zicfilp
#objdump: -dr

.*:[    ]+file format .*


Disassembly of section .text:

0+000 <.text>:
[ 	]+[0-9a-f]+:[ 	]+82104073[ 	]+sspush[ 	]+ra
[ 	]+[0-9a-f]+:[ 	]+82504073[ 	]+sspush[ 	]+t0
[ 	]+[0-9a-f]+:[ 	]+81c0c073[ 	]+sspopchk[ 	]+ra
[ 	]+[0-9a-f]+:[ 	]+81c2c073[ 	]+sspopchk[ 	]+t0
[ 	]+[0-9a-f]+:[ 	]+81c040f3[ 	]+ssld[ 	]+ra
[ 	]+[0-9a-f]+:[ 	]+81c042f3[ 	]+ssld[ 	]+t0
[ 	]+[0-9a-f]+:[ 	]+81c04073[ 	]+ssincp
[ 	]+[0-9a-f]+:[ 	]+81d04573[ 	]+ssrdp[ 	]+a0
[ 	]+[0-9a-f]+:[ 	]+00111017[ 	]+lpad[ 	]+0x111
