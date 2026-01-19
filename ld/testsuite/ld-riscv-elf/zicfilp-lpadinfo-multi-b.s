	.text
	.globl _start
	.type _start,@function
_start:
	call foo
	call bar
	ret
	.size _start, .-_start

	# Define bar with lpadinfo
	.globl bar
	.type bar,@function
bar:
	lpad 0x22222
	ret
	.size bar, .-bar

	.lpad_info bar, "$sFiiE", 0x22222

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
