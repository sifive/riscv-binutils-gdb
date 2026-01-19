	.text
	# Define foo with lpadinfo
	.globl foo
	.type foo,@function
foo:
	lpad 0x11111
	ret
	.size foo, .-foo

	.lpad_info foo, "$sFvvE", 0x11111

	.section ".note.gnu.property", "a"
	.p2align 3
	.long 1f - 0f
	.long 5f - 2f
	.long 5
0:	.asciz "GNU"
1:
	.p2align 3
2:	.long 0xc0000000
	.long 4f - 3f
3:
	.long 0x4
4:
	.p2align 3
5:
