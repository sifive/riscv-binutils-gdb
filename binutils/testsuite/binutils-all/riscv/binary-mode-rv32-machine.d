#PROG: objcopy
#source: binary-mode-rv32-machine.s
#as: -march=rv32i_zicsr
#objcopy: -Obinary
#objdump: -b binary -m riscv -D -M no-aliases -M arch=rv32i_zicsr

.*:.*file format binary

Disassembly of section \.data:

[0-9a-f]+ <\.data>:
[ 	]+[0-9a-f]+:[ 	]+c80022f3[ 	]+csrrs[ 	]+t0,cycleh,zero
#pass
