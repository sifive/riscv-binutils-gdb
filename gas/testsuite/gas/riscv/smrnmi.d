#as: -march=rv32i_smrnmi
#source: smrnmi.s
#objdump: -d

.*:[ 	]+file format .*

Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+70200073[ 	]+mnret
