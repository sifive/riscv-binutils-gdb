#as: -march=rv64i_xsfvfbfa
#objdump: -d

    .text
    .globl target

target:
    # altfmt=1, SEW=16: many FP vector ops redefined to BF16
    vsetvli a0, x0, e16alt, m1, ta, ma

    # arithmetic
    vfadd.vv  v4, v8, v12
    vfadd.vf  v4, v8, fa0
    vfsub.vv  v4, v8, v12
    vfsub.vf  v4, v8, fa0
    vfmul.vv  v4, v8, v12
    vfmul.vf  v4, v8, fa0
    vfrsub.vf v4, v8, fa0

    # min/max
    vfmin.vv  v4, v8, v12
    vfmin.vf  v4, v8, fa0
    vfmax.vv  v4, v8, v12
    vfmax.vf  v4, v8, fa0

    # sign inject
    vfsgnj.vv  v4, v8, v12
    vfsgnj.vf  v4, v8, fa0
    vfsgnjn.vv v4, v8, v12
    vfsgnjn.vf v4, v8, fa0
    vfsgnjx.vv v4, v8, v12
    vfsgnjx.vf v4, v8, fa0

    # slide
    vfslide1up.vf   v4, v8, fa0
    vfslide1down.vf v4, v8, fa0

    # mv/merge
    vfmv.v.f   v4, fa0
    vfmerge.vfm v4, v8, fa0, v0

    # compares
    vmfeq.vv  v4, v8, v12
    vmfeq.vf  v4, v8, fa0
    vmfle.vv  v4, v8, v12
    vmfle.vf  v4, v8, fa0
    vmflt.vv  v4, v8, v12
    vmflt.vf  v4, v8, fa0
    vmfne.vv  v4, v8, v12
    vmfne.vf  v4, v8, fa0
    vmfgt.vf  v4, v8, fa0
    vmfge.vf  v4, v8, fa0

    # FMAs
    vfmadd.vv  v4, v8, v12
    vfmadd.vf  v4, fa0, v8
    vfnmadd.vv v4, v8, v12
    vfnmadd.vf v4, fa0, v8
    vfmsub.vv  v4, v8, v12
    vfmsub.vf  v4, fa0, v8
    vfnmsub.vv v4, v8, v12
    vfnmsub.vf v4, fa0, v8
    vfmacc.vv  v4, v8, v12
    vfmacc.vf  v4, fa0, v8
    vfnmacc.vv v4, v8, v12
    vfnmacc.vf v4, fa0, v8
    vfmsac.vv  v4, v8, v12
    vfmsac.vf  v4, fa0, v8
    vfnmsac.vv v4, v8, v12
    vfnmsac.vf v4, fa0, v8

    # widening arithmetic
    vfwadd.vv  v4, v8, v12
    vfwadd.vf  v4, v8, fa0
    vfwsub.vv  v4, v8, v12
    vfwsub.vf  v4, v8, fa0
    vfwadd.wv  v4, v8, v12
    vfwadd.wf  v4, v8, fa0
    vfwsub.wv  v4, v8, v12
    vfwsub.wf  v4, v8, fa0

    vfwmul.vv  v4, v8, v12
    vfwmul.vf  v4, v8, fa0

    vfwmacc.vv  v4, v8, v12
    vfwmacc.vf  v4, fa0, v8
    vfwnmacc.vv v4, v8, v12
    vfwnmacc.vf v4, fa0, v8
    vfwmsac.vv  v4, v8, v12
    vfwmsac.vf  v4, fa0, v8
    vfwnmsac.vv v4, v8, v12
    vfwnmsac.vf v4, fa0, v8

    # scalar moves
    vfmv.s.f  v4, fa0
    vfmv.f.s  fa0, v4

    # conversions (BF16 semantics)
    vfwcvt.f.f.v  v4, v8
    vfncvt.f.f.w  v4, v8
    vfncvt.rod.f.f.w v4, v8

    # approximations and class
    vfrsqrt7.v v4, v8
    vfrec7.v   v4, v8
    vfclass.v  v4, v8

    # xsfvfbfa-specific BF16 compute
    vfwmaccbf16.vv v4, v8, v12
    vfwmaccbf16.vf v4, fa0, v8
    vfwcvtbf16.f.f.v v4, v8
    vfncvtbf16.f.f.w v4, v8

