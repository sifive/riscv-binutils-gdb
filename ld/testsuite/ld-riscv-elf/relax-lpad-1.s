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
	ret
.size   main, .-main
