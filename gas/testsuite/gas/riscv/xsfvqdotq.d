#as: -march=rv64i_xsfvqdotq
#objdump: -d

.*:[ 	]+file format .*

Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+b0862257[ 	]+sf.vqdot.vv[ 	]+v4,v8,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+b085e257[ 	]+sf.vqdot.vx[ 	]+v4,v8,a1,v0.t
[ 	]+[0-9a-f]+:[ 	]+a0862257[ 	]+sf.vqdotu.vv[ 	]+v4,v8,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+a085e257[ 	]+sf.vqdotu.vx[ 	]+v4,v8,a1,v0.t
[ 	]+[0-9a-f]+:[ 	]+a8862257[ 	]+sf.vqdotsu.vv[ 	]+v4,v8,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+a885e257[ 	]+sf.vqdotsu.vx[ 	]+v4,v8,a1,v0.t
[ 	]+[0-9a-f]+:[ 	]+b885e257[ 	]+sf.vqdotus.vx[ 	]+v4,v8,a1,v0.t
