#as: -march=rv64gc
#objdump: -r

.*:[ 	]+file format .*

RELOCATION RECORDS FOR .*
.*
0+2 R_RISCV_JAL.*bar.*
0+6 R_RISCV_JAL.*bar.*
0+6 R_RISCV_RELAX.*
0+e R_RISCV_JAL.*bar.*
0+16 R_RISCV_JAL.*bar.*
0+16 R_RISCV_RELAX.*
