#name: Check --force-zicfilp emits landing pad PLT (shared)
#source: zicfilp-plt.s
#as: -march=rv64gc_zicfilp
#ld: -shared -z force-zicfilp
#objdump: -dr -j .plt

[^:]*: *file format elf64-.*riscv

Disassembly of section \.plt:

[0-9a-f]+ <\.plt>:
.*:[ 	]+00000017[ 	]+lpad[ 	]+0x0
.*:[ 	]+00001e97[ 	]+auipc[ 	]+t4,0x1
.*:[ 	]+41c30333[ 	]+sub[ 	]+t1,t1,t3
.*:[ 	]+1e4ebe03[ 	]+ld[ 	]+t3,484\(t4\) # 1488 <\.got>
.*:[ 	]+fc430313[ 	]+add[ 	]+t1,t1,-60
.*:[ 	]+1e4e8293[ 	]+add[ 	]+t0,t4,484
.*:[ 	]+00135313[ 	]+srl[ 	]+t1,t1,0x1
.*:[ 	]+0082b283[ 	]+ld[ 	]+t0,8\(t0\)
.*:[ 	]+000e0067[ 	]+jr[ 	]+t3
.*:[ 	]+00000013[ 	]+nop
.*:[ 	]+00000013[ 	]+nop
.*:[ 	]+00000013[ 	]+nop

[0-9a-f]+ <foo@plt>:
.*:[ 	]+00001017[ 	]+lpad[ 	]0x1
.*:[ 	]+00001e17[ 	]+auipc[ 	]+t3,0x1
.*:[ 	]+1c4e3e03[ 	]+ld[ 	]+t3,452\(t3\) # 1498 <foo>
.*:[ 	]+000013b7[ 	]+lui[ 	]+t2,0x1
.*:[ 	]+000e0367[ 	]+jalr[ 	]+t1,t3
.*:[ 	]+00000013[ 	]+nop
.*:[ 	]+00000013[ 	]+nop
.*:[ 	]+00000013[ 	]+nop

[0-9a-f]+ <bar@plt>:
.*:[ 	]+00001017[ 	]+lpad[ 	]+0x1
.*:[ 	]+00001e17[ 	]+auipc[ 	]+t3,0x1
.*:[ 	]+1ace3e03[ 	]+ld[ 	]+t3,428\(t3\) # 14a0 <bar>
.*:[ 	]+000013b7[ 	]+lui[ 	]+t2,0x1
.*:[ 	]+000e0367[ 	]+jalr[ 	]+t1,t3
.*:[ 	]+00000013[ 	]+nop
.*:[ 	]+00000013[ 	]+nop
.*:[ 	]+00000013[ 	]+nop
