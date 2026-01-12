# Test that tail calls (auipc+jalr with rd=x0) are converted to cm.jt
# This tests the fix for rd extraction from JALR instruction (not AUIPC)

    .section .text

    .globl _start
    .type _start, %function
_start:
    # tail calls should use cm.jt (rd=x0, slots 0-31)
    .rept 50
    tail target
    .endr

    # regular calls should use cm.jalt (rd=ra, slots 32-255)
    .rept 50
    call target
    .endr
    ret

    .globl target
    .type target, %function
target:
    ret
