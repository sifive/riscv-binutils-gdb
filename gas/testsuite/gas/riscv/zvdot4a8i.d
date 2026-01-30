#as: -march=rv64i_zvdot4a8i
#objdump: -d

.*:[ 	]+file format .*

Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+b0862257[ 	]+vdot4a.vv[ 	]+v4,v8,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+b085e257[ 	]+vdot4a.vx[ 	]+v4,v8,a1,v0.t
[ 	]+[0-9a-f]+:[ 	]+a0862257[ 	]+vdot4au.vv[ 	]+v4,v8,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+a085e257[ 	]+vdot4au.vx[ 	]+v4,v8,a1,v0.t
[ 	]+[0-9a-f]+:[ 	]+a8862257[ 	]+vdot4asu.vv[ 	]+v4,v8,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+a885e257[ 	]+vdot4asu.vx[ 	]+v4,v8,a1,v0.t
[ 	]+[0-9a-f]+:[ 	]+b885e257[ 	]+vdot4aus.vx[ 	]+v4,v8,a1,v0.t

