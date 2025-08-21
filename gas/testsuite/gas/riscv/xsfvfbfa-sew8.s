#as: -march=rv64i_xsfvfbfa
#objdump: -d

    .text
    .globl target

target:
    # altfmt=1, SEW=8: only the following are legal and BF16-redefined
    vsetvli a0, x0, e8alt, m1, ta, ma

    # vfwcvt.f.x[u].v
    vfwcvt.f.x.v   v2, v4
    vfwcvt.f.xu.v  v3, v5

    # vfncvt.x[u].f.w
    vfncvt.x.f.w   v6, v8
    vfncvt.xu.f.w  v7, v9

    # vfncvt.rtz.x[u].f.w
    vfncvt.rtz.x.f.w   v10, v12
    vfncvt.rtz.xu.f.w  v11, v13
