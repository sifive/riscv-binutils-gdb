#as: -march=rv32i
#objdump: -dr

.*:[   ]+file format .*


Disassembly of section .text:

0+000 <.text>:
[ 	]+[0-9a-f]+:[ 	]+70200073[ 	]+mnret
[ 	]+[0-9a-f]+:[ 	]+70200073[ 	]+mnret
[ 	]+[0-9a-f]+:[ 	]+fc050073[ 	]+cflush.d.l1[ 	]+a0
[ 	]+[0-9a-f]+:[ 	]+fc250073[ 	]+cdiscard.d.l1[ 	]+a0
[ 	]+[0-9a-f]+:[ 	]+fc100073[ 	]+cflush.i.l1
[ 	]+[0-9a-f]+:[ 	]+fc050073[ 	]+cflush.d.l1[ 	]+a0
[ 	]+[0-9a-f]+:[ 	]+fc250073[ 	]+cdiscard.d.l1[ 	]+a0
[ 	]+[0-9a-f]+:[ 	]+fc100073[ 	]+cflush.i.l1
