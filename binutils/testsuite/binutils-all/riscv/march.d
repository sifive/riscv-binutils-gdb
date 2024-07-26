#PROG: objcopy
#source: march.s
#as: -march=rv32imac_zba_zbb_zcb
#objcopy: -Obinary
#objdump: -b binary -m riscv -D -M no-aliases -M arch=rv32imac_zba_zbb_zcb

.*:.*file format binary

Disassembly of section \.data:

[0-9a-f]+ <\.data>:
[ 	]+[0-9a-f]+:[ 	]+16e1[ 	]+c.addi[ 	]+a3,-8
[ 	]+[0-9a-f]+:[ 	]+9fe1[ 	]+c.zext.b[ 	]+a5
#pass
