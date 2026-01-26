#as: -march=rv64i_zfbfmin
#objdump: -d

.*:[ 	]+file format .*

Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+4485f553[ 	]+fcvt.bf16.s[ 	]+fa0,fa1
[ 	]+[0-9a-f]+:[ 	]+44858553[ 	]+fcvt.bf16.s[ 	]+fa0,fa1,rne
[ 	]+[0-9a-f]+:[ 	]+40658553[ 	]+fcvt.s.bf16[ 	]+fa0,fa1
[ 	]+[0-9a-f]+:[ 	]+4065f553[ 	]+fcvt\.s\.bf16[ 	]+fa0,fa1,dyn
[ 	]+[0-9a-f]+:[ 	]+00051507[ 	]+flh[ 	]+fa0,0\(a0\)
[ 	]+[0-9a-f]+:[ 	]+00a51027[ 	]+fsh[ 	]+fa0,0\(a0\)
[ 	]+[0-9a-f]+:[ 	]+e4050553[ 	]+fmv\.x\.h[ 	]+a0,fa0
[ 	]+[0-9a-f]+:[ 	]+f4050553[ 	]+fmv\.h\.x[ 	]+fa0,a0
