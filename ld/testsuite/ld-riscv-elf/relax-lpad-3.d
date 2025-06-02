#source: relax-lpad-3a.s
#source: relax-lpad-3b.s
#as: -march=rv64gc_zicfilp
#ld: --relax --relax-lpad
#objdump: -d

.*:[ ]+file format .*


Disassembly of section .text:

0+[0-9a-f]+ <_start>:
.*:[ 	]+[0-9a-f]+[ 	]+lpad[ 	]+0x0
.*:[ 	]+[0-9a-f]+[ 	]+j[ 	]+100ee <main>

0+[0-9a-f]+ <main>:
.*:[ 	]+[0-9a-f]+[ 	]+auipc[ 	]+a5,0x1
.*:[ 	]+[0-9a-f]+[ 	]+ld[ 	]+a5,26\(a5\)[ 	]+#.*<f>
.*:[ 	]+[0-9a-f]+[ 	]+jalr[ 	]+a5
.*:[ 	]+[0-9a-f]+[ 	]+jal[ 	]+[0-9a-z]+[ 	]+<bar>
.*:[ 	]+[0-9a-f]+[ 	]+ret

0+[0-9a-f]+ <foo>:
.*:[ 	]+[0-9a-f]+[ 	]+lpad[ 	]+0x0
.*:[ 	]+[0-9a-f]+[ 	]+ret

0+[0-9a-f]+ <bar>:
.*:[ 	]+[0-9a-f]+[ 	]+ret
