#as: -march=rv64gv_xsfmmbase_xsfmm32a8i_xsfmm32a8f_xsfmm32a16f_xsfmm32a32f_xsfmm64a64f_xsfmm128t_xsfmm64t_xsfmm32t_xsfmm16t
#objdump: -d

.*:[ 	]+file format .*


Disassembly of section .text:

0+000 <.text>:
[ 	]+[0-9a-f]+:[ 	]+2005f557[ 	]+sf.vsettnt[ 	]+a0,a1,e8,w1
[ 	]+[0-9a-f]+:[ 	]+4005f557[ 	]+sf.vsettnt[ 	]+a0,a1,e8,w2
[ 	]+[0-9a-f]+:[ 	]+6005f557[ 	]+sf.vsettnt[ 	]+a0,a1,e8,w4
[ 	]+[0-9a-f]+:[ 	]+2085f557[ 	]+sf.vsettnt[ 	]+a0,a1,e16,w1
[ 	]+[0-9a-f]+:[ 	]+4085f557[ 	]+sf.vsettnt[ 	]+a0,a1,e16,w2
[ 	]+[0-9a-f]+:[ 	]+6085f557[ 	]+sf.vsettnt[ 	]+a0,a1,e16,w4
[ 	]+[0-9a-f]+:[ 	]+3085f557[ 	]+sf.vsettnt[ 	]+a0,a1,e16alt,w1
[ 	]+[0-9a-f]+:[ 	]+5085f557[ 	]+sf.vsettnt[ 	]+a0,a1,e16alt,w2
[ 	]+[0-9a-f]+:[ 	]+7085f557[ 	]+sf.vsettnt[ 	]+a0,a1,e16alt,w4
[ 	]+[0-9a-f]+:[ 	]+2105f557[ 	]+sf.vsettnt[ 	]+a0,a1,e32,w1
[ 	]+[0-9a-f]+:[ 	]+4105f557[ 	]+sf.vsettnt[ 	]+a0,a1,e32,w2
[ 	]+[0-9a-f]+:[ 	]+2185f557[ 	]+sf.vsettnt[ 	]+a0,a1,e64,w1
[ 	]+[0-9a-f]+:[ 	]+8405f557[ 	]+sf.vsettn[ 	]+a0,a1
[ 	]+[0-9a-f]+:[ 	]+8415f557[ 	]+sf.vsettm[ 	]+a0,a1
[ 	]+[0-9a-f]+:[ 	]+8425f557[ 	]+sf.vsettk[ 	]+a0,a1
[ 	]+[0-9a-f]+:[ 	]+12a5f007[ 	]+sf.vlte8[ 	]+a0,\(a1\)
[ 	]+[0-9a-f]+:[ 	]+32a5f007[ 	]+sf.vlte16[ 	]+a0,\(a1\)
[ 	]+[0-9a-f]+:[ 	]+52a5f007[ 	]+sf.vlte32[ 	]+a0,\(a1\)
[ 	]+[0-9a-f]+:[ 	]+72a5f007[ 	]+sf.vlte64[ 	]+a0,\(a1\)
[ 	]+[0-9a-f]+:[ 	]+12a5f027[ 	]+sf.vste8[ 	]+a0,\(a1\)
[ 	]+[0-9a-f]+:[ 	]+32a5f027[ 	]+sf.vste16[ 	]+a0,\(a1\)
[ 	]+[0-9a-f]+:[ 	]+52a5f027[ 	]+sf.vste32[ 	]+a0,\(a1\)
[ 	]+[0-9a-f]+:[ 	]+72a5f027[ 	]+sf.vste64[ 	]+a0,\(a1\)
[ 	]+[0-9a-f]+:[ 	]+43f56457[ 	]+sf.vtmv.v.t[ 	]+v8,a0
[ 	]+[0-9a-f]+:[ 	]+5e856057[ 	]+sf.vtmv.t.v[ 	]+a0,v8
[ 	]+[0-9a-f]+:[ 	]+f2849277[ 	]+sf.mm.f.f[ 	]+mt2,v8,v9
[ 	]+[0-9a-f]+:[ 	]+fa849077[ 	]+sf.mm.e5m2.e5m2[ 	]+mt0,v8,v9
[ 	]+[0-9a-f]+:[ 	]+fa8494f7[ 	]+sf.mm.e5m2.e4m3[ 	]+mt4,v8,v9
[ 	]+[0-9a-f]+:[ 	]+fe849877[ 	]+sf.mm.e4m3.e5m2[ 	]+mt8,v8,v9
[ 	]+[0-9a-f]+:[ 	]+fe849cf7[ 	]+sf.mm.e4m3.e4m3[ 	]+mt12,v8,v9
[ 	]+[0-9a-f]+:[ 	]+f2848077[ 	]+sf.mm.u.u[ 	]+mt0,v8,v9
[ 	]+[0-9a-f]+:[ 	]+f6848477[ 	]+sf.mm.s.u[ 	]+mt4,v8,v9
[ 	]+[0-9a-f]+:[ 	]+f28488f7[ 	]+sf.mm.u.s[ 	]+mt8,v8,v9
[ 	]+[0-9a-f]+:[ 	]+f6848cf7[ 	]+sf.mm.s.s[ 	]+mt12,v8,v9
[ 	]+[0-9a-f]+:[ 	]+43e06f57[ 	]+sf.vtzero.t[ 	]+mt15
[ 	]+[0-9a-f]+:[ 	]+43c06057[ 	]+sf.vtdiscard
[ 	]+[0-9a-f]+:[ 	]+0d007657[ 	]+vsetvli[ 	]a2,zero,e32,m1,ta,ma
