/* GNU/Linux/RISC-V native target description support for GDB.
   Copyright (C) 2020-2023 Free Software Foundation, Inc.

   This file is part of GDB.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#ifndef NAT_RISCV_LINUX_TDESC_H
#define NAT_RISCV_LINUX_TDESC_H

#include "arch/riscv.h"
#include "asm/ptrace.h"

/* Determine XLEN and FLEN for the LWP identified by TID, and return a
   corresponding features object.  */
struct riscv_gdbarch_features riscv_linux_read_features (int tid);

/* Some branches and/or commits of linux kernel named this "struct __riscv_v_state",
   and later it was changed to "struct __riscv_v_ext_state",
   so using a macro to stand-in for that struct type to make it easier to modify
   in a single place, if compiling against one of those older Linux kernel commits */
#ifndef RISCV_VECTOR_STATE_T
#define RISCV_VECTOR_STATE_T struct __riscv_v_ext_state
#endif

/* Struct for use in ptrace() calls for vector CSRs/registers */
struct __riscv_vregs
{
  RISCV_VECTOR_STATE_T vstate;
  gdb_byte data[RISCV_MAX_VLENB * 32];	/* data will arrive packed, VLENB bytes per element, not necessarily RISCV_MAX_VLENB bytes per element */
};

#define VCSR_MASK_VXSAT 0x1
#define VCSR_POS_VXSAT 0
#define VCSR_MASK_VXRM 0x3
#define VCSR_POS_VXRM 1


#endif /* NAT_RISCV_LINUX_TDESC_H */
