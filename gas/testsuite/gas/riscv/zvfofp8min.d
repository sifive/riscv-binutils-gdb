#as: -march=rv64iv_zvfofp8min
#objdump: -d

.*:[ 	]+file format .*

Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+4b269557[ 	]+vfwcvtbf16.f.f.v[ 	]+v10,v18
[ 	]+[0-9a-f]+:[ 	]+4b3e95d7[ 	]+vfncvtbf16.f.f.w[ 	]+v11,v19
[ 	]+[0-9a-f]+:[ 	]+4b045457[ 	]+vfncvt.f.f.q[ 	]+v8,v16
[ 	]+[0-9a-f]+:[ 	]+4b1d94d7[ 	]+vfncvt.sat.f.f.q[ 	]+v9,v17
[ 	]+[0-9a-f]+:[ 	]+4b4f9657[ 	]+vfncvtbf16.sat.f.f.w[ 	]+v12,v20
