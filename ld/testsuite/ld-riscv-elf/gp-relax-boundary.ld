/* Linker script for GP relaxation boundary test (SCT-5044).
   This script places boundary_var at exactly GP+2048 (outside the limit)
   to test the boundary condition bug in GP relaxation.

   The GP range is [-2048, 2047], so GP+2048 is exactly 1 byte outside.
   The linker must NOT relax accesses to this variable to GP-relative. */

ENTRY(_start)

SECTIONS
{
  . = 0x10000;
  .text : {
    *(.text*)
  }

  . = 0x20000;
  .sdata : {
    *(.sdata*)
  }

  /* GP is placed at start of .sdata + 0x800 */
  __global_pointer$ = ADDR(.sdata) + 0x800;

  /* Place boundary_var at exactly GP + 2048 (outside the limit) */
  . = __global_pointer$ + 2048;
  .data : {
    *(.data*)
  }

  .bss : {
    *(.bss*)
  }
}

