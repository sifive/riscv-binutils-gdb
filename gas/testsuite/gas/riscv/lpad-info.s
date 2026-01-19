	.text
	.globl foo
	.globl bar
	.globl func

foo:
	ret

bar:
	ret

func:
	ret

	.lpad_info foo, "$sFvvE", 0x12345
	.lpad_info bar, "", 1
	.lpad_info func, "$sFiiE", %lpad_hash("FiiE")
