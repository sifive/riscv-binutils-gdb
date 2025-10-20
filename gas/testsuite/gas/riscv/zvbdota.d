#as: -march=rv64gc_zvqwbdota8i_zvqwbdota16i_zvfwbdota16bf_zvfqwbdota8f_zvfbdota32f
#objdump: -d

.*:[    ]+file format .*

Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+ba460477[ 	]+vqwbdotau.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+b8460477[ 	]+vqwbdotau.vv[ 	]+v8,v4,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+be460477[ 	]+vqwbdotas.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+bc460477[ 	]+vqwbdotas.vv[ 	]+v8,v4,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+b2461477[ 	]+vfwbdota.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+b0461477[ 	]+vfwbdota.vv[ 	]+v8,v4,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+ba461477[ 	]+vfqwbdota.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+b8461477[ 	]+vfqwbdota.vv[ 	]+v8,v4,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+be461477[ 	]+vfqwbdota.alt.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+bc461477[ 	]+vfqwbdota.alt.vv[ 	]+v8,v4,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+ae461477[ 	]+vfbdota.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+ac461477[ 	]+vfbdota.vv[ 	]+v8,v4,v12,v0.t
