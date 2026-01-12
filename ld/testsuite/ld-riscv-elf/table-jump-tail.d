#source: table-jump-tail.s
#as: -march=rv64ic_zcmt
#ld: -Ttable-jump.ld --relax-zcmt
#objdump: -d
# Test that tail calls (auipc+jalr rd=x0) use cm.jt (slots 0-31)
# and regular calls (auipc+jalr rd=ra) use cm.jalt (slots 32-255)
#...
Disassembly of section .riscv.jvt:
0+[0-9a-f]+ <__jvt_base\$>:
.*:[ 	]+[0-9a-f]+[ 	]+jvt.jt\[0\]:[ 	]+target
#...
.*:[ 	]+[0-9a-f]+[ 	]+jvt.jalt\[32\]:[ 	]+target
#...
Disassembly of section .text:
0+[0-9a-f]+ <_start>:
# tail calls -> cm.jt 0
.*:[ 	]+a002[ 	]+cm.jt[ 	]+0.*
.*:[ 	]+a002[ 	]+cm.jt[ 	]+0.*
.*:[ 	]+a002[ 	]+cm.jt[ 	]+0.*
.*:[ 	]+a002[ 	]+cm.jt[ 	]+0.*
.*:[ 	]+a002[ 	]+cm.jt[ 	]+0.*
#...
# regular calls -> cm.jalt 32
.*:[ 	]+a082[ 	]+cm.jalt[ 	]+32.*
.*:[ 	]+a082[ 	]+cm.jalt[ 	]+32.*
.*:[ 	]+a082[ 	]+cm.jalt[ 	]+32.*
.*:[ 	]+a082[ 	]+cm.jalt[ 	]+32.*
.*:[ 	]+a082[ 	]+cm.jalt[ 	]+32.*
#...
