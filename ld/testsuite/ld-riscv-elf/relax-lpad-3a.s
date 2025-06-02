	.text
        .globl  _start
        .type   _start, @function
_start:
	lpad 0 # This is lpad for entry symbol, which should not removed.
	tail main
	.size   _start, .-_start

        .globl  main
        .type   main, @function
main:
	lpad 0 # This could be relaxed since we only ref by the entry symbol via
	       # tail.
	       # But we need to keep it IF we has export this symbol.
        ld      a5,f
        jalr    a5
	call    bar
	ret
.size   main, .-main
        .section        .data.rel,"aw"
        .align  3
        .type   f, @object
        .size   f, 8
f:
	# Ref an external function
        .dword  foo
