#as: -march=rv64iv_xsfvfbfa
#objdump: -d

.*:[ \t]+file format .*

Disassembly of section .text:

0+ <target>:
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vsetvli[ \t]+a0,zero,e8alt,m1,ta,ma

[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwcvt\.f\.x\.v[ \t]+v2,v4
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfwcvt\.f\.xu\.v[ \t]+v3,v5
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfncvt\.x\.f\.w[ \t]+v6,v8
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfncvt\.xu\.f\.w[ \t]+v7,v9
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfncvt\.rtz\.x\.f\.w[ \t]+v10,v12
[ \t]+[0-9a-f]+:[ \t]+[0-9a-f]+[ \t]+vfncvt\.rtz\.xu\.f\.w[ \t]+v11,v13

