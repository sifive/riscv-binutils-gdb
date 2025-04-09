#as: -march=rv64iv_zvfofp4min
#objdump: -d

.*:[    ]+file format .*

Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+4a8b2257[ 	]+vfext.vf2[ 	]+v4,v8
[ 	]+[0-9a-f]+:[ 	]+488b2257[ 	]+vfext.vf2[ 	]+v4,v8,v0.t
