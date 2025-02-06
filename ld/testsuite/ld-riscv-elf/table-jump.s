    .section .text

    .globl _start
	.type	_start, %function
_start:
.ifdef TEST_CM_JT
    .rept 5
    jal x0, foo_local
    jal x0, foo_global
    .endr
.endif

.ifdef TEST_CM_JALT
    .rept 70
    call foo_global
    call foo_local
    .endr
.endif

.ifdef TEST_CM_JT_JALT
    .rept 5
    jal x0, foo_global
    .endr
    .rept 70
    call foo_global
    .endr
.endif

    .globl  foo_global
	.type	foo_global, %function
foo_global:
    ret

	.type	foo_local, %function
foo_local:
    ret

