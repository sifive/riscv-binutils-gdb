#source: relax-lpad-1.s
#as: -march=rv64gc_zicfilp
#ld: --relax --relax-lpad -shared
#objdump: -d


.*:[ ]+file format .*


Disassembly of section .plt:

0+[0-9a-f]+ <.plt>:
.*:[ 	]+[0-9a-f]+[ 	]+auipc[ 	]+t2,0x1
.*:[ 	]+[0-9a-f]+[ 	]+sub[ 	]+t1,t1,t3
.*:[ 	]+[0-9a-f]+[ 	]+ld[ 	]+t3,376\(t2\)[ 	]+#.*<\.got\.plt>
.*:[ 	]+[0-9a-f]+[ 	]+addi[ 	]+t1,t1,-44
.*:[ 	]+[0-9a-f]+[ 	]+addi[ 	]+t0,t2,376
.*:[ 	]+[0-9a-f]+[ 	]+srli[ 	]+t1,t1,0x1
.*:[ 	]+[0-9a-f]+[ 	]+ld[ 	]+t0,8\(t0\)
.*:[ 	]+[0-9a-f]+[ 	]+jr[ 	]+t3

0+[0-9a-f]+ <main@plt>:
.*:[ 	]+[0-9a-f]+[ 	]+auipc[ 	]+t3,0x1
.*:[ 	]+[0-9a-f]+[ 	]+ld[ 	]+t3,360\(t3\)[ 	]+#.*<main\+0x[0-9a-z]+>
.*:[ 	]+[0-9a-f]+[ 	]+jalr[ 	]+t1,t3
.*:[ 	]+[0-9a-f]+[ 	]+nop

Disassembly of section .text:

0+[0-9a-f]+ <_start>:
.*:[ 	]+[0-9a-f]+[ 	]+lpad[ 	]+0x0
.*:[ 	]+[0-9a-f]+[ 	]+j[ 	]+[0-9a-z]+[ 	]+<main@plt>

0+[0-9a-f]+ <main>:
.*:[ 	]+[0-9a-f]+[ 	]+lpad[ 	]+0x0
.*:[ 	]+[0-9a-f]+[ 	]+ret
