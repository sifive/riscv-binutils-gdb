foo:
	lpad %lpad_hash("FvvE")
	lui t2, %lpad_hash("FvvE")
	lpad %lpad_hash("Ჾ蠇") # md5 = 00000000 5e0a51c8 313ffb43 8a3a2861
	                       # It's the test case to make sure we can handle
	                       # the case that lower 20 bit is zero.
