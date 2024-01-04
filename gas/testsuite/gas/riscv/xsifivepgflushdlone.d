#as: -march=rv64i_xsfpgflushdlone
#objdump: -d

.*:[ 	]+file format .*

Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+fc300073[ 	]+sf.pgflush.d.l1
