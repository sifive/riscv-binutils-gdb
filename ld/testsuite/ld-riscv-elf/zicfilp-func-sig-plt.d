#name: Check --force-zicfilp-func-sig emits landing pad PLT (shared)
#source: zicfilp-func-sig-plt.s
#ld: -shared -z force-zicfilp-func-sig
#objdump: -dr -j .plt
#as: -march=rv64gc_zicfilp

[^:]*: *file format elf64-.*riscv

Disassembly of section \.plt:

[0-9a-f]+ <\.plt>:
.*:[ 	]+[0-9a-f]+[ 	]+lpad[ 	]+0x0
.*:[ 	]+[0-9a-f]+[ 	]+sub[ 	]+t1,t1,t3
.*:[ 	]+[0-9a-f]+[ 	]+auipc[ 	]+t3,0x[0-9a-f]+
.*:[ 	]+[0-9a-f]+[ 	]+addi[ 	]+t0,t3,[0-9]+ # [0-9a-f]+ <\.got\.plt>
.*:[ 	]+[0-9a-f]+[ 	]+ld[ 	]+t3,[0-9]+\(t3\)
.*:[ 	]+[0-9a-f]+[ 	]+addi[ 	]+t1,t1,-68
.*:[ 	]+[0-9a-f]+[ 	]+srli[ 	]+t1,t1,0x2
.*:[ 	]+[0-9a-f]+[ 	]+ld[ 	]+t0,8\(t0\)
.*:[ 	]+[0-9a-f]+[ 	]+jr[ 	]+t3
.*:[ 	]+[0-9a-f]+[ 	]+nop
.*:[ 	]+[0-9a-f]+[ 	]+nop
.*:[ 	]+[0-9a-f]+[ 	]+nop

[0-9a-f]+ <foo@plt>:
.*:[ 	]+[0-9a-f]+[ 	]+lpad[ 	]+0x0
.*:[ 	]+[0-9a-f]+[ 	]+auipc[ 	]+t3,0x[0-9a-f]+
.*:[ 	]+[0-9a-f]+[ 	]+ld[ 	]+t3,[0-9]+\(t3\) # [0-9a-f]+ <foo>
.*:[ 	]+[0-9a-f]+[ 	]+lui[ 	]+t2,0x1
.*:[ 	]+[0-9a-f]+[ 	]+jalr[ 	]+t1,t3
.*:[ 	]+[0-9a-f]+[ 	]+nop
.*:[ 	]+[0-9a-f]+[ 	]+nop
.*:[ 	]+[0-9a-f]+[ 	]+nop

[0-9a-f]+ <bar@plt>:
.*:[ 	]+[0-9a-f]+[ 	]+lpad[ 	]+0x0
.*:[ 	]+[0-9a-f]+[ 	]+auipc[ 	]+t3,0x1
.*:[ 	]+[0-9a-f]+[ 	]+ld[ 	]+t3,[0-9]+\(t3\) # [0-9a-f]+ <bar>
.*:[ 	]+[0-9a-f]+[ 	]+lui[ 	]+t2,0x1
.*:[ 	]+[0-9a-f]+[ 	]+jalr[ 	]+t1,t3
.*:[ 	]+[0-9a-f]+[ 	]+nop
.*:[ 	]+[0-9a-f]+[ 	]+nop
.*:[ 	]+[0-9a-f]+[ 	]+nop
