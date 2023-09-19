#name: RISC-V GNU Property (multiple inputs, combine section)
#source: property1.s
#source: property2.s
#as: -march=rv64g -defsym __property_zicfilp__=1 -defsym __property_zicfiss__=1
#ld: -shared
#readelf: -n
