#as: -march=rv64ib -defsym __64_bit__=1
#source: bitmanip-insns-pseudo.s
#objdump: -dr -Mno-aliases

.*:[ 	]+file format .*


Disassembly of section .text:

0+000 <.text>:
[ 	]+[0-9a-f]+:[ 	]+6815d513[ 	]+grevi[ 	]+a0,a1,0x1
[ 	]+[0-9a-f]+:[ 	]+6825d513[ 	]+grevi[ 	]+a0,a1,0x2
[ 	]+[0-9a-f]+:[ 	]+6835d513[ 	]+grevi[ 	]+a0,a1,0x3
[ 	]+[0-9a-f]+:[ 	]+6845d513[ 	]+grevi[ 	]+a0,a1,0x4
[ 	]+[0-9a-f]+:[ 	]+6865d513[ 	]+grevi[ 	]+a0,a1,0x6
[ 	]+[0-9a-f]+:[ 	]+6875d513[ 	]+grevi[ 	]+a0,a1,0x7
[ 	]+[0-9a-f]+:[ 	]+6885d513[ 	]+grevi[ 	]+a0,a1,0x8
[ 	]+[0-9a-f]+:[ 	]+68c5d513[ 	]+grevi[ 	]+a0,a1,0xc
[ 	]+[0-9a-f]+:[ 	]+68e5d513[ 	]+grevi[ 	]+a0,a1,0xe
[ 	]+[0-9a-f]+:[ 	]+68f5d513[ 	]+grevi[ 	]+a0,a1,0xf
[ 	]+[0-9a-f]+:[ 	]+6b05d513[ 	]+grevi[ 	]+a0,a1,0x30
[ 	]+[0-9a-f]+:[ 	]+6b85d513[ 	]+grevi[ 	]+a0,a1,0x38
[ 	]+[0-9a-f]+:[ 	]+6bc5d513[ 	]+grevi[ 	]+a0,a1,0x3c
[ 	]+[0-9a-f]+:[ 	]+6be5d513[ 	]+grevi[ 	]+a0,a1,0x3e
[ 	]+[0-9a-f]+:[ 	]+6bf5d513[ 	]+grevi[ 	]+a0,a1,0x3f
[ 	]+[0-9a-f]+:[ 	]+2815d513[ 	]+gorci[ 	]+a0,a1,0x1
[ 	]+[0-9a-f]+:[ 	]+2825d513[ 	]+gorci[ 	]+a0,a1,0x2
[ 	]+[0-9a-f]+:[ 	]+2835d513[ 	]+gorci[ 	]+a0,a1,0x3
[ 	]+[0-9a-f]+:[ 	]+2845d513[ 	]+gorci[ 	]+a0,a1,0x4
[ 	]+[0-9a-f]+:[ 	]+2865d513[ 	]+gorci[ 	]+a0,a1,0x6
[ 	]+[0-9a-f]+:[ 	]+2875d513[ 	]+gorci[ 	]+a0,a1,0x7
[ 	]+[0-9a-f]+:[ 	]+2885d513[ 	]+gorci[ 	]+a0,a1,0x8
[ 	]+[0-9a-f]+:[ 	]+28c5d513[ 	]+gorci[ 	]+a0,a1,0xc
[ 	]+[0-9a-f]+:[ 	]+28e5d513[ 	]+gorci[ 	]+a0,a1,0xe
[ 	]+[0-9a-f]+:[ 	]+28f5d513[ 	]+gorci[ 	]+a0,a1,0xf
[ 	]+[0-9a-f]+:[ 	]+2b05d513[ 	]+gorci[ 	]+a0,a1,0x30
[ 	]+[0-9a-f]+:[ 	]+2b85d513[ 	]+gorci[ 	]+a0,a1,0x38
[ 	]+[0-9a-f]+:[ 	]+2bc5d513[ 	]+gorci[ 	]+a0,a1,0x3c
[ 	]+[0-9a-f]+:[ 	]+2be5d513[ 	]+gorci[ 	]+a0,a1,0x3e
[ 	]+[0-9a-f]+:[ 	]+2bf5d513[ 	]+gorci[ 	]+a0,a1,0x3f
[ 	]+[0-9a-f]+:[ 	]+08159513[ 	]+shfli[ 	]+a0,a1,0x1
[ 	]+[0-9a-f]+:[ 	]+08259513[ 	]+shfli[ 	]+a0,a1,0x2
[ 	]+[0-9a-f]+:[ 	]+08359513[ 	]+shfli[ 	]+a0,a1,0x3
[ 	]+[0-9a-f]+:[ 	]+08459513[ 	]+shfli[ 	]+a0,a1,0x4
[ 	]+[0-9a-f]+:[ 	]+08659513[ 	]+shfli[ 	]+a0,a1,0x6
[ 	]+[0-9a-f]+:[ 	]+08759513[ 	]+shfli[ 	]+a0,a1,0x7
[ 	]+[0-9a-f]+:[ 	]+09859513[ 	]+shfli[ 	]+a0,a1,0x18
[ 	]+[0-9a-f]+:[ 	]+09c59513[ 	]+shfli[ 	]+a0,a1,0x1c
[ 	]+[0-9a-f]+:[ 	]+09e59513[ 	]+shfli[ 	]+a0,a1,0x1e
[ 	]+[0-9a-f]+:[ 	]+09f59513[ 	]+shfli[ 	]+a0,a1,0x1f
[ 	]+[0-9a-f]+:[ 	]+0815d513[ 	]+unshfli[ 	]+a0,a1,0x1
[ 	]+[0-9a-f]+:[ 	]+0825d513[ 	]+unshfli[ 	]+a0,a1,0x2
[ 	]+[0-9a-f]+:[ 	]+0835d513[ 	]+unshfli[ 	]+a0,a1,0x3
[ 	]+[0-9a-f]+:[ 	]+0845d513[ 	]+unshfli[ 	]+a0,a1,0x4
[ 	]+[0-9a-f]+:[ 	]+0865d513[ 	]+unshfli[ 	]+a0,a1,0x6
[ 	]+[0-9a-f]+:[ 	]+0875d513[ 	]+unshfli[ 	]+a0,a1,0x7
[ 	]+[0-9a-f]+:[ 	]+0985d513[ 	]+unshfli[ 	]+a0,a1,0x18
[ 	]+[0-9a-f]+:[ 	]+09c5d513[ 	]+unshfli[ 	]+a0,a1,0x1c
[ 	]+[0-9a-f]+:[ 	]+09e5d513[ 	]+unshfli[ 	]+a0,a1,0x1e
[ 	]+[0-9a-f]+:[ 	]+09f5d513[ 	]+unshfli[ 	]+a0,a1,0x1f
[ 	]+[0-9a-f]+:[ 	]+6905d513[ 	]+grevi[ 	]+a0,a1,0x10
[ 	]+[0-9a-f]+:[ 	]+6985d513[ 	]+grevi[ 	]+a0,a1,0x18
[ 	]+[0-9a-f]+:[ 	]+69c5d513[ 	]+grevi[ 	]+a0,a1,0x1c
[ 	]+[0-9a-f]+:[ 	]+69e5d513[ 	]+grevi[ 	]+a0,a1,0x1e
[ 	]+[0-9a-f]+:[ 	]+69f5d513[ 	]+grevi[ 	]+a0,a1,0x1f
[ 	]+[0-9a-f]+:[ 	]+6a05d513[ 	]+grevi[ 	]+a0,a1,0x20
[ 	]+[0-9a-f]+:[ 	]+2905d513[ 	]+gorci[ 	]+a0,a1,0x10
[ 	]+[0-9a-f]+:[ 	]+2985d513[ 	]+gorci[ 	]+a0,a1,0x18
[ 	]+[0-9a-f]+:[ 	]+29c5d513[ 	]+gorci[ 	]+a0,a1,0x1c
[ 	]+[0-9a-f]+:[ 	]+29e5d513[ 	]+gorci[ 	]+a0,a1,0x1e
[ 	]+[0-9a-f]+:[ 	]+29f5d513[ 	]+gorci[ 	]+a0,a1,0x1f
[ 	]+[0-9a-f]+:[ 	]+2a05d513[ 	]+gorci[ 	]+a0,a1,0x20
[ 	]+[0-9a-f]+:[ 	]+08859513[ 	]+shfli[ 	]+a0,a1,0x8
[ 	]+[0-9a-f]+:[ 	]+08c59513[ 	]+shfli[ 	]+a0,a1,0xc
[ 	]+[0-9a-f]+:[ 	]+08e59513[ 	]+shfli[ 	]+a0,a1,0xe
[ 	]+[0-9a-f]+:[ 	]+08f59513[ 	]+shfli[ 	]+a0,a1,0xf
[ 	]+[0-9a-f]+:[ 	]+09059513[ 	]+shfli[ 	]+a0,a1,0x10
[ 	]+[0-9a-f]+:[ 	]+0885d513[ 	]+unshfli[ 	]+a0,a1,0x8
[ 	]+[0-9a-f]+:[ 	]+08c5d513[ 	]+unshfli[ 	]+a0,a1,0xc
[ 	]+[0-9a-f]+:[ 	]+08e5d513[ 	]+unshfli[ 	]+a0,a1,0xe
[ 	]+[0-9a-f]+:[ 	]+08f5d513[ 	]+unshfli[ 	]+a0,a1,0xf
[ 	]+[0-9a-f]+:[ 	]+0905d513[ 	]+unshfli[ 	]+a0,a1,0x10
