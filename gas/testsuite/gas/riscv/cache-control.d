#as: -march=rv32i
#objdump: -dr

.*:[ 	]+file format .*


Disassembly of section .text:

0+000 <.text>:
[ 	]+0:[ 	]+fc050073[ 	]+cflush.d.l1[ 	]+a0
[ 	]+4:[ 	]+fc250073[ 	]+cdiscard.d.l1[ 	]+a0
[ 	]+8:[ 	]+fc100073[ 	]+cflush.i.l1
[ 	]+c:[ 	]+fc050073[ 	]+cflush.d.l1[ 	]+a0
[ 	]+10:[ 	]+fc250073[ 	]+cdiscard.d.l1[ 	]+a0
[ 	]+14:[ 	]+fc100073[ 	]+cflush.i.l1
