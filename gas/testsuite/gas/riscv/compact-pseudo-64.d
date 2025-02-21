#as: -defsym __64_bit__=1 -mno-relax -march=rv64ifdq_zfh
#source: compact-pseudo.s
#objdump: -dr -Mno-aliases

.*:[ 	]+file format .*


Disassembly of section .text.rv32:

0+000 <rv32_gp>:
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GOT_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a18533[ 	]+add[ 	]+a0,gp,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GOT_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00053503[ 	]+ld[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GOT_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a18533[ 	]+add[ 	]+a0,gp,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00050513[ 	]+addi[ 	]+a0,a0,0 # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_TLS_GD_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a18533[ 	]+add[ 	]+a0,gp,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_TLS_GD_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00050513[ 	]+addi[ 	]+a0,a0,0 # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_TLS_GD_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_TLS_GOT_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a18533[ 	]+add[ 	]+a0,gp,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_TLS_GOT_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00053503[ 	]+ld[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_TLS_GOT_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a18533[ 	]+add[ 	]+a0,gp,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00050503[ 	]+lb[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a18533[ 	]+add[ 	]+a0,gp,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00051503[ 	]+lh[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a18533[ 	]+add[ 	]+a0,gp,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00052503[ 	]+lw[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a18533[ 	]+add[ 	]+a0,gp,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00054503[ 	]+lbu[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a18533[ 	]+add[ 	]+a0,gp,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00055503[ 	]+lhu[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b185b3[ 	]+add[ 	]+a1,gp,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00059507[ 	]+flh[ 	]+fa0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b185b3[ 	]+add[ 	]+a1,gp,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+0005a507[ 	]+flw[ 	]+fa0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b185b3[ 	]+add[ 	]+a1,gp,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a58023[ 	]+sb[ 	]+a0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_S[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b185b3[ 	]+add[ 	]+a1,gp,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a59023[ 	]+sh[ 	]+a0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_S[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b185b3[ 	]+add[ 	]+a1,gp,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a5a023[ 	]+sw[ 	]+a0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_S[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b185b3[ 	]+add[ 	]+a1,gp,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a59027[ 	]+fsh[ 	]+fa0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_S[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b185b3[ 	]+add[ 	]+a1,gp,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a5a027[ 	]+fsw[ 	]+fa0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_S[ 	]+foo
[0-9a-f]+ <rv32_pseudo_gp>:
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GOT_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a60533[ 	]+add[ 	]+a0,a2,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GOT_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00053503[ 	]+ld[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GOT_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a60533[ 	]+add[ 	]+a0,a2,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00050513[ 	]+addi[ 	]+a0,a0,0 # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_TLS_GD_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a60533[ 	]+add[ 	]+a0,a2,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_TLS_GD_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00050513[ 	]+addi[ 	]+a0,a0,0 # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_TLS_GD_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_TLS_GOT_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a60533[ 	]+add[ 	]+a0,a2,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_TLS_GOT_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00053503[ 	]+ld[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_TLS_GOT_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a60533[ 	]+add[ 	]+a0,a2,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00050503[ 	]+lb[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a60533[ 	]+add[ 	]+a0,a2,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00051503[ 	]+lh[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a60533[ 	]+add[ 	]+a0,a2,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00052503[ 	]+lw[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a60533[ 	]+add[ 	]+a0,a2,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00054503[ 	]+lbu[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a60533[ 	]+add[ 	]+a0,a2,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00055503[ 	]+lhu[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b605b3[ 	]+add[ 	]+a1,a2,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00059507[ 	]+flh[ 	]+fa0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b605b3[ 	]+add[ 	]+a1,a2,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+0005a507[ 	]+flw[ 	]+fa0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b605b3[ 	]+add[ 	]+a1,a2,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a58023[ 	]+sb[ 	]+a0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_S[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b605b3[ 	]+add[ 	]+a1,a2,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a59023[ 	]+sh[ 	]+a0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_S[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b605b3[ 	]+add[ 	]+a1,a2,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a5a023[ 	]+sw[ 	]+a0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_S[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b605b3[ 	]+add[ 	]+a1,a2,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a59027[ 	]+fsh[ 	]+fa0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_S[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b605b3[ 	]+add[ 	]+a1,a2,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a5a027[ 	]+fsw[ 	]+fa0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_S[ 	]+foo
#...
Disassembly of section .text.rv64:

0+000 <rv64_gp>:
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a18533[ 	]+add[ 	]+a0,gp,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00056503[ 	]+lwu[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a18533[ 	]+add[ 	]+a0,gp,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00053503[ 	]+ld[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b185b3[ 	]+add[ 	]+a1,gp,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+0005b507[ 	]+fld[ 	]+fa0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b185b3[ 	]+add[ 	]+a1,gp,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a5b023[ 	]+sd[ 	]+a0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_S[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b185b3[ 	]+add[ 	]+a1,gp,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a5b027[ 	]+fsd[ 	]+fa0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_S[ 	]+foo
[0-9a-f]+ <rv64_pseudo_gp>:
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a60533[ 	]+add[ 	]+a0,a2,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00056503[ 	]+lwu[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00000537[ 	]+lui[ 	]+a0,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a60533[ 	]+add[ 	]+a0,a2,a0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00053503[ 	]+ld[ 	]+a0,0\(a0\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b605b3[ 	]+add[ 	]+a1,a2,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+0005b507[ 	]+fld[ 	]+fa0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_I[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b605b3[ 	]+add[ 	]+a1,a2,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a5b023[ 	]+sd[ 	]+a0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_S[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+000005b7[ 	]+lui[ 	]+a1,0x0
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_HI20[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00b605b3[ 	]+add[ 	]+a1,a2,a1
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_ADD[ 	]+foo
[ 	]+[0-9a-f]+:[ 	]+00a5b027[ 	]+fsd[ 	]+fa0,0\(a1\) # 0 <.*>
[ 	]+[0-9a-f]+:[ 	]+R_RISCV_GPREL_LO12_S[ 	]+foo
