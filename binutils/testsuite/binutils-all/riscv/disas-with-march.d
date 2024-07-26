#as: -march=rv64i
#objdump: -d -M arch=rv64i
# Test the disassembly of binaries with march specified,
# ensure that objdump is sane


#...
Disassembly of section \.text:

[0-9a-f]+ <_start>:
   [0-9a-f]+:	00000013          	nop
