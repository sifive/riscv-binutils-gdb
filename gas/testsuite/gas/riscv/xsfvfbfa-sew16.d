#as: -march=rv64iv_xsfvfbfa
#objdump: -d

.*:[ \t]+file format .*

Disassembly of section .text:

0+ <target>:
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vsetvli[ \t]+a0,zero,e16alt,m1,ta,ma

[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfadd\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfadd\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfsub\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfsub\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmul\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmul\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfrsub\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmin\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmin\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmax\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmax\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfsgnj\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfsgnj\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfsgnjn\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfsgnjn\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfsgnjx\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfsgnjx\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfslide1up\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfslide1down\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmv\.v\.f[ \t]+v4,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmerge\.vfm[ \t]+v4,v8,fa0,v0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vmfeq\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vmfeq\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vmfle\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vmfle\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vmflt\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vmflt\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vmfne\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vmfne\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vmfgt\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vmfge\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmadd\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmadd\.vf[ \t]+v4,fa0,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfnmadd\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfnmadd\.vf[ \t]+v4,fa0,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmsub\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmsub\.vf[ \t]+v4,fa0,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfnmsub\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfnmsub\.vf[ \t]+v4,fa0,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmacc\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmacc\.vf[ \t]+v4,fa0,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfnmacc\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfnmacc\.vf[ \t]+v4,fa0,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmsac\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmsac\.vf[ \t]+v4,fa0,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfnmsac\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfnmsac\.vf[ \t]+v4,fa0,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwadd\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwadd\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwsub\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwsub\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwadd\.wv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwadd\.wf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwsub\.wv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwsub\.wf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwmul\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwmul\.vf[ \t]+v4,v8,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwmacc\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwmacc\.vf[ \t]+v4,fa0,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwnmacc\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwnmacc\.vf[ \t]+v4,fa0,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwmsac\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwmsac\.vf[ \t]+v4,fa0,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwnmsac\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwnmsac\.vf[ \t]+v4,fa0,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmv\.s\.f[ \t]+v4,fa0
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfmv\.f\.s[ \t]+fa0,v4
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwcvt\.f\.f\.v[ \t]+v4,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfncvt\.f\.f\.w[ \t]+v4,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfncvt\.rod\.f\.f\.w[ \t]+v4,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfrsqrt7\.v[ \t]+v4,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfrec7\.v[ \t]+v4,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfclass\.v[ \t]+v4,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwmaccbf16\.vv[ \t]+v4,v8,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwmaccbf16\.vf[ \t]+v4,fa0,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwcvtbf16\.f\.f\.v[ \t]+v4,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfncvtbf16\.f\.f\.w[ \t]+v4,v8

