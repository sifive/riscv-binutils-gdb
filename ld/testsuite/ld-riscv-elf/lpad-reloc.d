#name: lpad-reloc
#source: lpad-reloc.s
#as: -march=rv64i_zicfilp
#ld: -m[riscv_choose_lp64_emul] -Tlpad-reloc.ld
#objdump: -d

.*:     file format .*


Disassembly of section \.text:

.* <_start>:
.*:	00000017[ 	]+lpad[ 	]+0x0
.*:	00008067[ 	]+ret

#pass
