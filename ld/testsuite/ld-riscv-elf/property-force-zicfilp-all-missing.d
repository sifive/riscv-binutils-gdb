#name: Warn with all missing GNU NOTE Zicfilp input
#source: property1.s
#source: property2.s
#as: -mabi=lp64
#ld: -shared -z force-zicfilp
#warning: .*: warning: Zicfilp turned on by -z force-zicfilp.*$
#readelf: -n

# Should warn about the missing input ZICFILP NOTE but should
# still mark output as ZICFILP

Displaying notes found in: .note.gnu.property
[ 	]+Owner[ 	]+Data size[ 	]+Description
[ 	]+GNU[ 	]+0x00000020[ 	]+NT_GNU_PROPERTY_TYPE_0
[ 	]+Properties: RISC-V AND feature: ZICFILP
[ 	]+RISC-V OR feature: 
