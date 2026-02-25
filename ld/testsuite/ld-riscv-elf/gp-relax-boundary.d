#source: gp-relax-boundary.s
#ld: -T gp-relax-boundary.ld --relax
#objdump: -d

# Test that GP relaxation boundary condition is handled correctly (SCT-5044).
# boundary_var is placed at exactly GP+2048 by the linker script.
# The linker must NOT relax accesses to it using GP-relative addressing,
# as that would overflow the 12-bit signed immediate range [-2048, 2047].
# The link should succeed with boundary_var accessed via auipc (not gp).

.*:[ 	]+file format .*


Disassembly of section \.text:

0+[0-9a-f]+ <_start>:
#  boundary_var access - must use auipc, NOT gp-relative
.*:[ 	]+[0-9a-f]+[ 	]+auipc[ 	]+a0,0x[0-9a-f]+
.*:[ 	]+[0-9a-f]+[ 	]+(addi|mv)[ 	]+a0,a0.*
#  gp_data access
.*:[ 	]+[0-9a-f]+[ 	]+.*
.*:[ 	]+[0-9a-f]+[ 	]+.*
.*:[ 	]+[0-9a-f]+[ 	]+ret

