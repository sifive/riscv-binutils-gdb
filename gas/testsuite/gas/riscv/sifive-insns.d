#as: -march=rv32iv_xsfvqmaccdod_xsfvqmaccqoq
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
[ 	]+[0-9a-f]+:[ 	]+f2c4225b[ 	]+sf.vqmaccu.4x8x4[ 	]+v4,v8,v12
[ 	]+[0-9a-f]+:[ 	]+f6c4225b[ 	]+sf.vqmacc.4x8x4[ 	]+v4,v8,v12
[ 	]+[0-9a-f]+:[ 	]+fac4225b[ 	]+sf.vqmaccus.4x8x4[ 	]+v4,v8,v12
[ 	]+[0-9a-f]+:[ 	]+fec4225b[ 	]+sf.vqmaccsu.4x8x4[ 	]+v4,v8,v12
[ 	]+[0-9a-f]+:[ 	]+b2c4225b[ 	]+sf.vqmaccu.2x8x2[ 	]+v4,v8,v12
[ 	]+[0-9a-f]+:[ 	]+b6c4225b[ 	]+sf.vqmacc.2x8x2[ 	]+v4,v8,v12
[ 	]+[0-9a-f]+:[ 	]+bac4225b[ 	]+sf.vqmaccus.2x8x2[ 	]+v4,v8,v12
[ 	]+[0-9a-f]+:[ 	]+bec4225b[ 	]+sf.vqmaccsu.2x8x2[ 	]+v4,v8,v12
