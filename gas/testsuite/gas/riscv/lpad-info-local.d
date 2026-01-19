#as: -march=rv64gc_zicfilp
#readelf: -A
#source: lpad-info-local.s

Attribute Section: riscv
#...

Landing Pad Information Section '\.riscv\.lpadinfo':
  Symbol Name              Signature                Lpad Value
  global_func +\$sFvvE +0x00012345
  local_func +\$sFiiE +0x00033333
