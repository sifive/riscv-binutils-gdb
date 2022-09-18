#as: -march=rv64ic
#source: zihintntl-base.s
#objdump: -dr

.*:[ 	]+file format .*

Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+00200033[ 	]+add[		]+zero,zero,sp
[ 	]+[0-9a-f]+:[ 	]+01b28823[ 	]+sb[ 		]+s11,16\(t0\)
[ 	]+[0-9a-f]+:[ 	]+00300033[ 	]+add[		]+zero,zero,gp
[ 	]+[0-9a-f]+:[ 	]+01b28923[ 	]+sb[ 		]+s11,18\(t0\)
[ 	]+[0-9a-f]+:[ 	]+00400033[ 	]+add[		]+zero,zero,tp
[ 	]+[0-9a-f]+:[ 	]+01b28a23[ 	]+sb[ 		]+s11,20\(t0\)
[ 	]+[0-9a-f]+:[ 	]+00500033[ 	]+add[		]+zero,zero,t0
[ 	]+[0-9a-f]+:[ 	]+01b28b23[ 	]+sb[ 		]+s11,22\(t0\)
[ 	]+[0-9a-f]+:[ 	]+900a[ 	]+c\.add[ 	]+zero,sp
[ 	]+[0-9a-f]+:[ 	]+01b28c23[ 	]+sb[ 		]+s11,24\(t0\)
[ 	]+[0-9a-f]+:[ 	]+900e[ 	]+c\.add[ 	]+zero,gp
[ 	]+[0-9a-f]+:[ 	]+01b28d23[ 	]+sb[ 		]+s11,26\(t0\)
[ 	]+[0-9a-f]+:[ 	]+9012[ 	]+c\.add[ 	]+zero,tp
[ 	]+[0-9a-f]+:[ 	]+01b28e23[ 	]+sb[ 		]+s11,28\(t0\)
[ 	]+[0-9a-f]+:[ 	]+9016[ 	]+c\.add[ 	]+zero,t0
[ 	]+[0-9a-f]+:[ 	]+01b28f23[ 	]+sb[ 		]+s11,30\(t0\)
