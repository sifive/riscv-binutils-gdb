#PROG: objcopy
#source: binary-mode-rv64-machine.s
#as: -march=rv64i
#objcopy: -Obinary
#objdump: -b binary -m riscv -D -M no-aliases -M arch=rv64i

.*:.*file format binary

Disassembly of section \.data:

[0-9a-f]+ <\.data>:
[ 	]+[0-9a-f]+:[ 	]+78433303[ 	]+ld[ 	]+t1,1924\(t1\)
#pass
