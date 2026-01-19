	.text
	.globl _start
	.type _start,@function
_start:
	call foo
	call bar

	# Define foo with lpad value 0 and bar with non-zero value
	.globl foo
	.type foo,@function
foo:
	lpad 0
	ret
	.size foo, .-foo

	.globl bar
	.type bar,@function
bar:
	lpad 0x54321
	ret
	.size bar, .-bar

	# Lpadinfo section - foo has lpad value 0
	.lpad_info foo, "$sFvvE", 0
	.lpad_info bar, "$sFiiE", 0x54321

	.section ".note.gnu.property", "a"
	.p2align 3
	.long 1f - 0f		/* name length */
	.long 5f - 2f		/* data length */
	.long 5			/* note type */
0:	.asciz "GNU"		/* vendor name */
1:
	.p2align 3
2:	.long 0xc0000000	/* pr_type.  */
	.long 4f - 3f		/* pr_datasz.  */
3:
	.long 0x4		/* ZICFILP.  */
4:
	.p2align 3
5:
