#name: Check lpadinfo conflict warning
#source: zicfilp-lpadinfo-conflict-a.s
#source: zicfilp-lpadinfo-conflict-b.s
#ld: -shared -z force-zicfilp-func-sig
#warning: .*conflicting lpadinfo values for .foo.*
#as: -march=rv64gc_zicfilp
