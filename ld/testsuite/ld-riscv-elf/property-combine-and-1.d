#name: GNU Property (multiple inputs, combine section)
#source: property1.s
#source: property2.s
#as: -march=rv64g -defsym __property_zicfilp__=1 -defsym __property_zicfiss__=1
#ld: -shared
#readelf: -n

Displaying notes found in: .note.gnu.property
[ 	]+Owner[ 	]+Data size[ 	]+Description
[ 	]+GNU[ 	]+0x00000010[ 	]+NT_GNU_PROPERTY_TYPE_0
[ 	]+Properties: RISC-V OR feature: ZICFISS
