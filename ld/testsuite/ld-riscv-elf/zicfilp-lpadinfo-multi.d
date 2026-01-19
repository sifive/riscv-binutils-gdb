#name: Check lpadinfo PLT with multiple input files
#source: zicfilp-lpadinfo-multi-a.s
#source: zicfilp-lpadinfo-multi-b.s
#ld: -shared -z force-zicfilp-func-sig
#objdump: -dr -j .plt
#as: -march=rv64gc_zicfilp

#...
[0-9a-f]+ <foo@plt>:
.*:[ 	]+[0-9a-f]+[ 	]+lpad[ 	]+0x11111
#...
[0-9a-f]+ <bar@plt>:
.*:[ 	]+[0-9a-f]+[ 	]+lpad[ 	]+0x22222
#...
