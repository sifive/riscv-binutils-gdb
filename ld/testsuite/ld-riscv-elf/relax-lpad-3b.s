        .text
        .align  1
        .globl  foo
        .type   foo, @function
foo:
	lpad 0 # This can't be relaxed since it has been referenced by a R_RISCV_64 in relax-lpad-3a
        ret
        .size   foo, .-foo

        .globl  bar
        .type   bar, @function
bar:
	lpad 0 # This should be able to relaxed since not referenced by any R_RISCV_64.
        ret
        .size   bar, .-bar
