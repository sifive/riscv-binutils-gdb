	.text
        .globl  _start
        .type   _start, @function
_start:
	lpad 0 # This is lpad for entry symbol, which should not removed.
	tail main
	.size   _start, .-_start

        .globl  main
        .type   main, @function
        .globl  foo
        .type   foo, @function
foo:
main:
	lpad 0 # This should not relaxed since there is two symbol defined in
	       # the same place, we may able relax this in the future.
	ret
.size   main, .-main
.size   foo, .-foo
