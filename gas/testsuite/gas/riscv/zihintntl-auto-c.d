#as: -march=rv64ic_zihintntl
#source: zihintntl.s
#objdump: -dr

.*:[ 	]+file format .*

Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+900a[ 	]+ntl\.p1
[ 	]+[0-9a-f]+:[ 	]+01b28023[ 	]+sb[ 	]+s11,0\(t0\)
[ 	]+[0-9a-f]+:[ 	]+900e[ 	]+ntl\.pall
[ 	]+[0-9a-f]+:[ 	]+01b28123[ 	]+sb[ 	]+s11,2\(t0\)
[ 	]+[0-9a-f]+:[ 	]+9012[ 	]+ntl\.s1
[ 	]+[0-9a-f]+:[ 	]+01b28223[ 	]+sb[ 	]+s11,4\(t0\)
[ 	]+[0-9a-f]+:[ 	]+9016[ 	]+ntl\.all
[ 	]+[0-9a-f]+:[ 	]+01b28323[ 	]+sb[ 	]+s11,6\(t0\)
