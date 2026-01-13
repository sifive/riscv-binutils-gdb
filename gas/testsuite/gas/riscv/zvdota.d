#as: -march=rv64gc_zvqwdota8i_zvqwdota16i_zvfwdota16bf_zvfqwdota8f
#objdump: -d

.*:[    ]+file format .*

Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+9a460477[ 	]+vqwdotau.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+98460477[ 	]+vqwdotau.vv[ 	]+v8,v4,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+9e460477[ 	]+vqwdotas.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+9c460477[ 	]+vqwdotas.vv[ 	]+v8,v4,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+92461477[ 	]+vfwdota.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+90461477[ 	]+vfwdota.vv[ 	]+v8,v4,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+9a461477[ 	]+vfqwdota.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+98461477[ 	]+vfqwdota.vv[ 	]+v8,v4,v12,v0.t
[ 	]+[0-9a-f]+:[ 	]+9e461477[ 	]+vfqwdota.alt.vv[ 	]+v8,v4,v12
[ 	]+[0-9a-f]+:[ 	]+9c461477[ 	]+vfqwdota.alt.vv[ 	]+v8,v4,v12,v0.t
