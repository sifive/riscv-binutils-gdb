#as: -march=rv32ip
#source: p-ext-paired-regpair.s
#objdump: -dr

.*:[ 	]+file format .*


Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+4415c71b[ 	]+nsrai[ 	]+a4,a0,0x1
[ 	]+[0-9a-f]+:[ 	]+441ac71b[ 	]+nsrai[ 	]+a4,s4,0x1
[ 	]+[0-9a-f]+:[ 	]+441fc71b[ 	]+nsrai[ 	]+a4,t5,0x1
[ 	]+[0-9a-f]+:[ 	]+4410c71b[ 	]+nsrai[ 	]+a4,zero,0x1
[ 	]+[0-9a-f]+:[ 	]+411ac71b[ 	]+pnsrai.b[ 	]+a4,s4,0x1
[ 	]+[0-9a-f]+:[ 	]+411fc71b[ 	]+pnsrai.b[ 	]+a4,t5,0x1
[ 	]+[0-9a-f]+:[ 	]+421ac71b[ 	]+pnsrai.h[ 	]+a4,s4,0x1
[ 	]+[0-9a-f]+:[ 	]+421fc71b[ 	]+pnsrai.h[ 	]+a4,t5,0x1
[ 	]+[0-9a-f]+:[ 	]+541ac71b[ 	]+nsrari[ 	]+a4,s4,0x1
[ 	]+[0-9a-f]+:[ 	]+541fc71b[ 	]+nsrari[ 	]+a4,t5,0x1
[ 	]+[0-9a-f]+:[ 	]+041ac71b[ 	]+nsrli[ 	]+a4,s4,0x1
[ 	]+[0-9a-f]+:[ 	]+041fc71b[ 	]+nsrli[ 	]+a4,t5,0x1
[ 	]+[0-9a-f]+:[ 	]+00956a1b[ 	]+pslli.db[ 	]+s4,a0,0x1
[ 	]+[0-9a-f]+:[ 	]+009a6f1b[ 	]+pslli.db[ 	]+t5,s4,0x1
[ 	]+[0-9a-f]+:[ 	]+01ff6a1b[ 	]+pslli.dh[ 	]+s4,t5,0xf
[ 	]+[0-9a-f]+:[ 	]+03fa6f1b[ 	]+pslli.dw[ 	]+t5,s4,0x1f
[ 	]+[0-9a-f]+:[ 	]+1caa471b[ 	]+predsum.dbs[ 	]+a4,s4,a0
[ 	]+[0-9a-f]+:[ 	]+18af471b[ 	]+predsum.dhs[ 	]+a4,t5,a0
