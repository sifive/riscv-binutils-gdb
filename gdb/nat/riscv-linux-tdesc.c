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

#include "gdbsupport/common-defs.h"

#include "gdb_proc_service.h"
#include "arch/riscv.h"
#include "elf/common.h"
#include "nat/gdb_ptrace.h"
#include "nat/riscv-linux-tdesc.h"
#include "gdbsupport/gdb_setjmp.h"

#include <sys/uio.h>
#include <signal.h>

/* Work around glibc header breakage causing ELF_NFPREG not to be usable.  */
#ifndef NFPREG
# define NFPREG 33
#endif

static unsigned long safe_read_vlenb ();

/* See nat/riscv-linux-tdesc.h.  */

struct riscv_gdbarch_features
riscv_linux_read_features (int tid)
{
  struct riscv_gdbarch_features features;
  elf_fpregset_t regs;
  int flen;

  /* Figuring out xlen is easy.  */
  features.xlen = sizeof (elf_greg_t);

  /* Start with no f-registers.  */
  features.flen = 0;

  /* How much worth of f-registers can we fetch if any?  */
  for (flen = sizeof (regs.__f.__f[0]); ; flen *= 2)
    {
      size_t regset_size;
      struct iovec iov;

      /* Regsets have a uniform slot size, so we count FSCR like
	 an FP data register.  */
      regset_size = ELF_NFPREG * flen;
      if (regset_size > sizeof (regs))
	break;

      iov.iov_base = &regs;
      iov.iov_len = regset_size;
      if (ptrace (PTRACE_GETREGSET, tid, NT_FPREGSET,
		  (PTRACE_TYPE_ARG3) &iov) == -1)
	{
	  switch (errno)
	    {
	    case EINVAL:
	      continue;
	    case EIO:
	      break;
	    default:
	      perror_with_name (_("Couldn't get registers"));
	      break;
	    }
	}
      else
	features.flen = flen;
      break;
    }

  features.vlen = safe_read_vlenb ();

  return features;
}

static SIGJMP_BUF sigill_guard_jmp_buf;

static void
sigill_guard (int sig)
{
  /* this will gets us back to caller deeper in the call stack, with an indication that
     an illegal instruction condition was encountered */
  SIGLONGJMP (sigill_guard_jmp_buf, -1);

  /* control won't get here */
}



static unsigned long
safe_read_vlenb ()
{
  /* Surrounding the attempt here to read VLENB CSR to have a signal handler set up
     to trap illegal instruction condition (SIGILL), and if a trap happens during this call,
     get control back within this function and return 0 in that case.
   */
  unsigned long vlenb = 0;
  struct sigaction our_action = { 0 };
  struct sigaction original_action;
  int sysresult;


  our_action.sa_handler = sigill_guard;

  sysresult = sigaction (SIGILL, &our_action, &original_action);
  if (sysresult != 0)
    {
      perror
	("Error installing temporary SIGILL handler in safe_read_vlenb()");
    }

  if (SIGSETJMP (sigill_guard_jmp_buf, 1) == 0)
    {
    asm ("csrr %0, vlenb":"=r" (vlenb));
    }
  else
    {
      /* Must've generated an illegal instruction condition; we'll figure this means
         no vector unit is present */
      vlenb = 0;
    }


  if (sysresult == 0)
    {
      /* re-install former handler */
      sysresult = sigaction (SIGILL, &original_action, NULL);
      if (sysresult != 0)
	{
	  perror
	    ("Error re-installing original SIGILL handler in safe_read_vlenb()");
	}

    }
  return vlenb;
}
