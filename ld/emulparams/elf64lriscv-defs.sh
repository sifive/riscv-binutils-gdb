source_sh ${srcdir}/emulparams/elf32lriscv-defs.sh
ELFSIZE=64

# The following set are used for testing the correctness of compact.
#
# If we want to move RO, ideally we only need to set the ld options
# -z separate-code and -Trodata-segment=addr.  But since the option
# -z separate-code doesn't work for us, and I don't know why for now.
# Therefore, we have to define RODATA_ADDR, and set --enable-separate-code
# in the binutils conifgure.
#
# If we want to move RW, then only define the DATA_ADDR should be enough.

# Move RO that far away from text.
#RODATA_ADDR=0x8000000000

# Move RW that far away from text and RO.
#DATA_ADDR=0x8000000000
