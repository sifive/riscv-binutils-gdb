
        # Matrix Configuration Instructions
        # sf.vsettnt rd, rs1, SEW, WIDEN
        sf.vsettnt   a0,  a1,  e8,    w1
        sf.vsettnt   a0,  a1,  e8,    w2
        sf.vsettnt   a0,  a1,  e8,    w4
        sf.vsettnt   a0,  a1,  e16,   w1
        sf.vsettnt   a0,  a1,  e16,   w2
        sf.vsettnt   a0,  a1,  e16,   w4
        sf.vsettnt   a0,  a1,  e16alt,   w1
        sf.vsettnt   a0,  a1,  e16alt,   w2
        sf.vsettnt   a0,  a1,  e16alt,   w4
        sf.vsettnt   a0,  a1,  e32,   w1
        sf.vsettnt   a0,  a1,  e32,   w2
        sf.vsettnt   a0,  a1,  e64,   w1

        sf.vsettn a0, a1
        sf.vsettm a0, a1
        sf.vsettk a0, a1

        # Load Tile Subset to Memory
        sf.vlte8  a0, (a1)
        sf.vlte16 a0, (a1)
        sf.vlte32 a0, (a1)
        sf.vlte64 a0, (a1)

        # Store Tile Subset to Memory
        sf.vste8  a0, (a1)
        sf.vste16 a0, (a1)
        sf.vste32 a0, (a1)
        sf.vste64 a0, (a1)

        # Move Tile Subset between Tile State and Vector Registers
        sf.vtmv.v.t v8, a0
        sf.vtmv.t.v a0, v8

        # Matrix Arithmetic Instructions
        sf.mm.f.f mt2, v8, v9
        sf.mm.e5m2.e5m2 mt0, v8, v9
        sf.mm.e5m2.e4m3 mt4, v8, v9
        sf.mm.e4m3.e5m2 mt8, v8, v9
        sf.mm.e4m3.e4m3 mt12, v8, v9
        sf.mm.u.u mt0, v8, v9
        sf.mm.s.u mt4, v8, v9
        sf.mm.u.s mt8, v8, v9
        sf.mm.s.s mt12, v8, v9

        ## Write zeros to tile
        sf.vtzero.t mt15

        ## Context Discard Instruction
        sf.vtdiscard

	## sf.vsettnt is sharing same encoding of vsetvli, make sure this won't
	## disassemble wrong.
	vsetvli a2, zero, e32, m1, ta, ma
