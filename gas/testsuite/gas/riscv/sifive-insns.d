#as: -march=rv32iv_xsfvfhbfmin_xsfvfnrclipxfqf_xsfvfwmaccqqq_xsfvqmaccdod_xsfvqmaccqoq
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
[ 	]+[0-9a-f]+:[ 	]+4a869257[ 	]+sf.vfwcvt.f.bf16.v[ 	]+v4,v8
[ 	]+[0-9a-f]+:[ 	]+4a8e9257[ 	]+sf.vfncvt.bf16.f.w[ 	]+v4,v8
[ 	]+[0-9a-f]+:[ 	]+48869257[ 	]+sf.vfwcvt.f.bf16.v[ 	]+v4,v8,v0.t
[ 	]+[0-9a-f]+:[ 	]+488e9257[ 	]+sf.vfncvt.bf16.f.w[ 	]+v4,v8,v0.t
[ 	]+[0-9a-f]+:[ 	]+f2c4125b[ 	]+sf.vfwmacc.4x4x4[ 	]+v4,v8,v12
[ 	]+[0-9a-f]+:[ 	]+8a86525b[ 	]+sf.vfnrclip.xu.f.qf[ 	]+v4,v8,fa2
[ 	]+[0-9a-f]+:[ 	]+8e86525b[ 	]+sf.vfnrclip.x.f.qf[ 	]+v4,v8,fa2
