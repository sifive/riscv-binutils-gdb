#as: -march=rv64i_zihintntl
#source: zihintntl.s
#objdump: -dr

.*:[ 	]+file format .*

Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+00200033[ 	]+ntl\.p1
[ 	]+[0-9a-f]+:[ 	]+01b28023[ 	]+sb[ 	]+s11,0\(t0\)
[ 	]+[0-9a-f]+:[ 	]+00300033[ 	]+ntl\.pall
[ 	]+[0-9a-f]+:[ 	]+01b28123[ 	]+sb[ 	]+s11,2\(t0\)
[ 	]+[0-9a-f]+:[ 	]+00400033[ 	]+ntl\.s1
[ 	]+[0-9a-f]+:[ 	]+01b28223[ 	]+sb[ 	]+s11,4\(t0\)
[ 	]+[0-9a-f]+:[ 	]+00500033[ 	]+ntl\.all
[ 	]+[0-9a-f]+:[ 	]+01b28323[ 	]+sb[ 	]+s11,6\(t0\)
