#as: -march=rv64gc_zvqbdot8i_zvqbdot16i_zvfwbdot16bf_zvfqbdot8f_zvfbdot32f
#objdump: -d

.*:[    ]+file format .*

Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+ba460477[ 	]+vqbdotu.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+b8460477[ 	]+vqbdotu.vv[ 	]+v8,v4,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+be460477[ 	]+vqbdots.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+bc460477[ 	]+vqbdots.vv[ 	]+v8,v4,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+b2461477[ 	]+vfwbdot.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+b0461477[ 	]+vfwbdot.vv[ 	]+v8,v4,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+ba461477[ 	]+vfqbdot.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+b8461477[ 	]+vfqbdot.vv[ 	]+v8,v4,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+be461477[ 	]+vfqbdot.alt.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+bc461477[ 	]+vfqbdot.alt.vv[ 	]+v8,v4,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+ae461477[ 	]+vfbdot.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+ac461477[ 	]+vfbdot.vv[ 	]+v8,v4,v12,v0.t
