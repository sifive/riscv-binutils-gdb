#name: Zcmt table jump with .option norelax
#source: table-jump-norelax.s
#as: -march=rv64ic_zcmt
#ld: -melf64lriscv -Ttable-jump.ld --relax-zcmt
#objdump: -d
#...
Disassembly of section .text:
0+[0-9a-f]+ <_start>:
.*:[ 	]+[0-9a-f]+[ 	]+cm.jalt[ 	]+32.*
#...
.*:[ 	]+[0-9a-f]+[ 	]+auipc[ 	]+ra,0x0
.*:[ 	]+[0-9a-f]+[ 	]+jalr[ 	]+[0-9]+\(ra\).*norelax_target.*
.*:[ 	]+[0-9a-f]+[ 	]+cm.jalt[ 	]+32.*
#pass
