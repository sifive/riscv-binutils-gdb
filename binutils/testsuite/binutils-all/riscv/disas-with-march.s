    .section .data           # Data section
value:
    .word 42                 # Define a 32-bit integer

    .section .text           # Code (text) section
    .globl _start            # Global entry point
_start:
    nop                      # No operation (just to keep it simple)
