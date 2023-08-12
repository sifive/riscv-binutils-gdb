/* Native-dependent code for GNU/Linux RISC-V.
   Copyright (C) 2018-2023 Free Software Foundation, Inc.

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

#include "defs.h"
#include "regcache.h"
#include "gregset.h"
#include "linux-nat.h"
#include "riscv-tdep.h"
#include "inferior.h"
#include "regset.h"

#include "elf/common.h"

#include "nat/riscv-linux-tdesc.h"

#include <sys/ptrace.h>

/* Work around glibc header breakage causing ELF_NFPREG not to be usable.  */
#ifndef NFPREG
# define NFPREG 33
#endif

/* RISC-V Linux native additions to the default linux support.  */

class riscv_linux_nat_target final : public linux_nat_target
{
public:
  /* Add our register access methods.  */
  void fetch_registers (struct regcache *regcache, int regnum) override;
  void store_registers (struct regcache *regcache, int regnum) override;

  /* Read suitable target description.  */
  const struct target_desc *read_description () override;
};

static riscv_linux_nat_target the_riscv_linux_nat_target;

/* Copy general purpose register REGNUM (or all gp regs if REGNUM == -1)
   from regset GREGS into REGCACHE.  */

static void
supply_gregset_regnum (struct regcache *regcache, const prgregset_t *gregs,
		       int regnum)
{
  int i;
  const elf_greg_t *regp = *gregs;

  if (regnum == -1)
    {
      /* We only support the integer registers and PC here.  */
      for (i = RISCV_ZERO_REGNUM + 1; i < RISCV_PC_REGNUM; i++)
	regcache->raw_supply (i, regp + i);

      /* GDB stores PC in reg 32.  Linux kernel stores it in reg 0.  */
      regcache->raw_supply (RISCV_PC_REGNUM, regp + 0);

      /* Fill the inaccessible zero register with zero.  */
      regcache->raw_supply_zeroed (RISCV_ZERO_REGNUM);
    }
  else if (regnum == RISCV_ZERO_REGNUM)
    regcache->raw_supply_zeroed (RISCV_ZERO_REGNUM);
  else if (regnum > RISCV_ZERO_REGNUM && regnum < RISCV_PC_REGNUM)
    regcache->raw_supply (regnum, regp + regnum);
  else if (regnum == RISCV_PC_REGNUM)
    regcache->raw_supply (RISCV_PC_REGNUM, regp + 0);
}

/* Copy all general purpose registers from regset GREGS into REGCACHE.  */

void
supply_gregset (struct regcache *regcache, const prgregset_t *gregs)
{
  supply_gregset_regnum (regcache, gregs, -1);
}

/* Copy floating point register REGNUM (or all fp regs if REGNUM == -1)
   from regset FPREGS into REGCACHE.  */

static void
supply_fpregset_regnum (struct regcache *regcache, const prfpregset_t *fpregs,
			int regnum)
{
  int flen = register_size (regcache->arch (), RISCV_FIRST_FP_REGNUM);
  union
    {
      const prfpregset_t *fpregs;
      const gdb_byte *buf;
    }
  fpbuf = { .fpregs = fpregs };
  int i;

  if (regnum == -1)
    {
      /* We only support the FP registers and FCSR here.  */
      for (i = RISCV_FIRST_FP_REGNUM;
	   i <= RISCV_LAST_FP_REGNUM;
	   i++, fpbuf.buf += flen)
	regcache->raw_supply (i, fpbuf.buf);

      regcache->raw_supply (RISCV_CSR_FCSR_REGNUM, fpbuf.buf);
    }
  else if (regnum >= RISCV_FIRST_FP_REGNUM && regnum <= RISCV_LAST_FP_REGNUM)
    {
      fpbuf.buf += flen * (regnum - RISCV_FIRST_FP_REGNUM);
      regcache->raw_supply (regnum, fpbuf.buf);
    }
  else if (regnum == RISCV_CSR_FCSR_REGNUM)
    {
      fpbuf.buf += flen * (RISCV_LAST_FP_REGNUM - RISCV_FIRST_FP_REGNUM + 1);
      regcache->raw_supply (RISCV_CSR_FCSR_REGNUM, fpbuf.buf);
    }
}

#define MEMBER_SIZE(type, member) sizeof(((type *) 0)->member)

static const regcache_map_entry riscv_linux_vregmap[] =
{
  { 1, RISCV_CSR_VSTART_REGNUM, MEMBER_SIZE(struct __riscv_vregs, vstate.vstart) },
  { 1, RISCV_CSR_VL_REGNUM, MEMBER_SIZE(struct __riscv_vregs, vstate.vl) },
  { 1, RISCV_CSR_VTYPE_REGNUM, MEMBER_SIZE(struct __riscv_vregs, vstate.vtype) },
  { 1, RISCV_CSR_VCSR_REGNUM, MEMBER_SIZE(struct __riscv_vregs, vstate.vcsr) },
  /* struct __riscv_vregs member "datap" is a pointer that doesn't
     correspond to a register value.  In the context of ptrace(),
     member is always zero, with V0..V31 values inline after that.
     So, skipping datap.  */
  { 1, REGCACHE_MAP_SKIP, MEMBER_SIZE(struct __riscv_vregs, vstate.datap) },
  /* Here's V0..V31.  Specifying 0 as size leads to a call to
     register_size() for size determination.  */
  { 32, RISCV_V0_REGNUM, 0 },
  /* count==0 represents termination of entries.  */  
  { 0 },
};

/* Define the vector register regset.  */

static const struct regset riscv_linux_vregset =
{
  riscv_linux_vregmap,
  /* Other RISC-V regsets use riscv_supply_regset here; not sure
  that'd be correct for this case.  */
  regcache_supply_regset,
  regcache_collect_regset
};


/* Copy vector register REGNUM (or all vector regs if REGNUM == -1)
   from regset RISCV_VECTOR into REGCACHE.  */

static void
supply_vregset_regnum (struct regcache *regcache,
		       const struct __riscv_vregs *vregs, int regnum)
{
  const gdb_byte *buf;
  int vlenb = register_size (regcache->arch (), RISCV_V0_REGNUM);

  regcache_supply_regset (&riscv_linux_vregset, regcache, regnum, vregs, sizeof(*vregs));  

  if (regnum == -1 || regnum == RISCV_CSR_VLENB_REGNUM)
    {
      /* We already have a local copy above, use that (widened for
      XLEN padding).  */
      uint64_t xlen_safe_vlenb = vlenb;
      buf = (gdb_byte *) & xlen_safe_vlenb;
      regcache->raw_supply (RISCV_CSR_VLENB_REGNUM, buf);
    }

  if (regnum == -1 || regnum == RISCV_CSR_VXSAT_REGNUM)
    {
      /* This CSR is not part of vregs->vstate literally, but we can
      infer a value from vcsr.  */
      uint64_t vxsat = ((vregs->vstate.vcsr >> VCSR_POS_VXSAT) & VCSR_MASK_VXSAT);
      buf = (gdb_byte *) & vxsat;
      regcache->raw_supply (RISCV_CSR_VXSAT_REGNUM, buf);
    }

  if (regnum == -1 || regnum == RISCV_CSR_VXRM_REGNUM)
    {
      /* This CSR is not part of vregs->vstate literally, but we can
      infer a value from vcsr.  */
      uint64_t vxrm = ((vregs->vstate.vcsr >> VCSR_POS_VXRM) & VCSR_MASK_VXRM);
      buf = (gdb_byte *) & vxrm;
      regcache->raw_supply (RISCV_CSR_VXRM_REGNUM, buf);
    }
}

/* Copy vector register REGNUM (or all vector regs if REGNUM == -1)
   from REGCACHE into regset RISCV_VECTOR.  */

static void
fill_vregset (const struct regcache *regcache, struct __riscv_vregs *vregs,
	      int regnum)
{
  gdb_byte *buf;

  regcache_collect_regset (&riscv_linux_vregset, regcache, regnum, vregs, sizeof(*vregs));    

  if (regnum == -1 || regnum == RISCV_CSR_VCSR_REGNUM || regnum == RISCV_CSR_VXSAT_REGNUM
      || regnum == RISCV_CSR_VXRM_REGNUM)
    {
      uint64_t vxsat_from_regcache;
      uint64_t vxrm_from_regcache;      

      if ( ! (regnum == -1 || regnum == RISCV_CSR_VCSR_REGNUM) )
	{
	  /* We don't already have the VCSR value, from the earlier
	  regcache_collect_regset call, so let's get it now. */
	  regcache_collect_regset (&riscv_linux_vregset, regcache, RISCV_CSR_VCSR_REGNUM, vregs, sizeof(*vregs));    	  
	}

      if (regnum == RISCV_CSR_VXSAT_REGNUM)
	{
	  /* Overwrite VCSR with the VXSAT bit here.  */
	  buf = (gdb_byte*)&vxsat_from_regcache;
	  regcache->raw_collect (RISCV_CSR_VXSAT_REGNUM, buf);
	  vregs->vstate.vcsr &= ~((uint64_t)VCSR_MASK_VXSAT << VCSR_POS_VXSAT);
	  vregs->vstate.vcsr |= ((vxsat_from_regcache & VCSR_MASK_VXSAT) << VCSR_POS_VXSAT);
	}

      if (regnum == RISCV_CSR_VXRM_REGNUM)
	{
	  /* Overwrite VCSR with the VXRM bit here.  */
	  buf = (gdb_byte*)&vxrm_from_regcache;
	  regcache->raw_collect (RISCV_CSR_VXRM_REGNUM, buf);
	  vregs->vstate.vcsr &= ~((uint64_t)VCSR_MASK_VXRM << VCSR_POS_VXRM);	  
	  vregs->vstate.vcsr |= ((vxrm_from_regcache & VCSR_MASK_VXRM) << VCSR_POS_VXRM);
	}
      
    }

  /* VLENB register is not writable, so that's why nothing is
  collected here for that register.  */

}


/* Copy all floating point registers from regset FPREGS into REGCACHE.  */

void
supply_fpregset (struct regcache *regcache, const prfpregset_t *fpregs)
{
  supply_fpregset_regnum (regcache, fpregs, -1);
}

/* Copy general purpose register REGNUM (or all gp regs if REGNUM == -1)
   from REGCACHE into regset GREGS.  */

void
fill_gregset (const struct regcache *regcache, prgregset_t *gregs, int regnum)
{
  elf_greg_t *regp = *gregs;

  if (regnum == -1)
    {
      /* We only support the integer registers and PC here.  */
      for (int i = RISCV_ZERO_REGNUM + 1; i < RISCV_PC_REGNUM; i++)
	regcache->raw_collect (i, regp + i);

      regcache->raw_collect (RISCV_PC_REGNUM, regp + 0);
    }
  else if (regnum == RISCV_ZERO_REGNUM)
    /* Nothing to do here.  */
    ;
  else if (regnum > RISCV_ZERO_REGNUM && regnum < RISCV_PC_REGNUM)
    regcache->raw_collect (regnum, regp + regnum);
  else if (regnum == RISCV_PC_REGNUM)
    regcache->raw_collect (RISCV_PC_REGNUM, regp + 0);
}

/* Copy floating point register REGNUM (or all fp regs if REGNUM == -1)
   from REGCACHE into regset FPREGS.  */

void
fill_fpregset (const struct regcache *regcache, prfpregset_t *fpregs,
	       int regnum)
{
  int flen = register_size (regcache->arch (), RISCV_FIRST_FP_REGNUM);
  union
    {
      prfpregset_t *fpregs;
      gdb_byte *buf;
    }
  fpbuf = { .fpregs = fpregs };
  int i;

  if (regnum == -1)
    {
      /* We only support the FP registers and FCSR here.  */
      for (i = RISCV_FIRST_FP_REGNUM;
	   i <= RISCV_LAST_FP_REGNUM;
	   i++, fpbuf.buf += flen)
	regcache->raw_collect (i, fpbuf.buf);

      regcache->raw_collect (RISCV_CSR_FCSR_REGNUM, fpbuf.buf);
    }
  else if (regnum >= RISCV_FIRST_FP_REGNUM && regnum <= RISCV_LAST_FP_REGNUM)
    {
      fpbuf.buf += flen * (regnum - RISCV_FIRST_FP_REGNUM);
      regcache->raw_collect (regnum, fpbuf.buf);
    }
  else if (regnum == RISCV_CSR_FCSR_REGNUM)
    {
      fpbuf.buf += flen * (RISCV_LAST_FP_REGNUM - RISCV_FIRST_FP_REGNUM + 1);
      regcache->raw_collect (RISCV_CSR_FCSR_REGNUM, fpbuf.buf);
    }
}

/* Return a target description for the current target.  */

const struct target_desc *
riscv_linux_nat_target::read_description ()
{
  const struct riscv_gdbarch_features features
    = riscv_linux_read_features (inferior_ptid.pid ());
  return riscv_lookup_target_description (features);
}

/* Fetch REGNUM (or all registers if REGNUM == -1) from the target
   into REGCACHE using PTRACE_GETREGSET.  */

void
riscv_linux_nat_target::fetch_registers (struct regcache *regcache, int regnum)
{
  int tid;

  tid = get_ptrace_pid (regcache->ptid());

  if ((regnum >= RISCV_ZERO_REGNUM && regnum <= RISCV_PC_REGNUM)
      || (regnum == -1))
    {
      struct iovec iov;
      elf_gregset_t regs;

      iov.iov_base = &regs;
      iov.iov_len = sizeof (regs);

      if (ptrace (PTRACE_GETREGSET, tid, NT_PRSTATUS,
		  (PTRACE_TYPE_ARG3) &iov) == -1)
	perror_with_name (_("Couldn't get registers"));
      else
	supply_gregset_regnum (regcache, &regs, regnum);
    }

  if ((regnum >= RISCV_FIRST_FP_REGNUM
       && regnum <= RISCV_LAST_FP_REGNUM)
      || (regnum == RISCV_CSR_FCSR_REGNUM)
      || (regnum == -1))
    {
      struct iovec iov;
      elf_fpregset_t regs;

      iov.iov_base = &regs;
      iov.iov_len = ELF_NFPREG * register_size (regcache->arch (),
						RISCV_FIRST_FP_REGNUM);
      gdb_assert (iov.iov_len <= sizeof (regs));

      if (ptrace (PTRACE_GETREGSET, tid, NT_FPREGSET,
		  (PTRACE_TYPE_ARG3) &iov) == -1)
	perror_with_name (_("Couldn't get registers"));
      else
	supply_fpregset_regnum (regcache, &regs, regnum);
    }

  /* If Linux kernel was not configured to support RISC-V vectors, then
     the ptrace call will return -1, and we just won't get vector registers,
     but in that case it wouldn't be an error that needs user attention.  */
  if ((regnum >= RISCV_V0_REGNUM && regnum <= RISCV_V31_REGNUM)
      || (regnum == RISCV_CSR_VSTART_REGNUM)
      || (regnum == RISCV_CSR_VL_REGNUM)
      || (regnum == RISCV_CSR_VTYPE_REGNUM)
      || (regnum == RISCV_CSR_VCSR_REGNUM)
      || (regnum == RISCV_CSR_VLENB_REGNUM)
      || (regnum == RISCV_CSR_VXSAT_REGNUM)
      || (regnum == RISCV_CSR_VXRM_REGNUM)
      || (regnum == -1))
    {
      struct iovec iov;
      struct __riscv_vregs vregs;

      iov.iov_base = &vregs;
      iov.iov_len = sizeof (vregs);

      if (ptrace (PTRACE_GETREGSET, tid, NT_RISCV_VECTOR,
		  (PTRACE_TYPE_ARG3) & iov) == 0)
	supply_vregset_regnum (regcache, &vregs, regnum);
    }

  if ((regnum == RISCV_CSR_MISA_REGNUM)
      || (regnum == -1))
    {
      /* TODO: Need to add a ptrace call for this.  */
      regcache->raw_supply_zeroed (RISCV_CSR_MISA_REGNUM);
    }

  /* Access to other CSRs has potential security issues, don't support them for
     now.  */
}

/* Store REGNUM (or all registers if REGNUM == -1) to the target
   from REGCACHE using PTRACE_SETREGSET.  */

void
riscv_linux_nat_target::store_registers (struct regcache *regcache, int regnum)
{
  int tid;

  tid = get_ptrace_pid (regcache->ptid ());

  if ((regnum >= RISCV_ZERO_REGNUM && regnum <= RISCV_PC_REGNUM)
      || (regnum == -1))
    {
      struct iovec iov;
      elf_gregset_t regs;

      iov.iov_base = &regs;
      iov.iov_len = sizeof (regs);

      if (ptrace (PTRACE_GETREGSET, tid, NT_PRSTATUS,
		  (PTRACE_TYPE_ARG3) &iov) == -1)
	perror_with_name (_("Couldn't get registers"));
      else
	{
	  fill_gregset (regcache, &regs, regnum);

	  if (ptrace (PTRACE_SETREGSET, tid, NT_PRSTATUS,
		      (PTRACE_TYPE_ARG3) &iov) == -1)
	    perror_with_name (_("Couldn't set registers"));
	}
    }

  if ((regnum >= RISCV_FIRST_FP_REGNUM
       && regnum <= RISCV_LAST_FP_REGNUM)
      || (regnum == RISCV_CSR_FCSR_REGNUM)
      || (regnum == -1))
    {
      struct iovec iov;
      elf_fpregset_t regs;

      iov.iov_base = &regs;
      iov.iov_len = ELF_NFPREG * register_size (regcache->arch (),
						RISCV_FIRST_FP_REGNUM);
      gdb_assert (iov.iov_len <= sizeof (regs));

      if (ptrace (PTRACE_GETREGSET, tid, NT_FPREGSET,
		  (PTRACE_TYPE_ARG3) &iov) == -1)
	perror_with_name (_("Couldn't get registers"));
      else
	{
	  fill_fpregset (regcache, &regs, regnum);

	  if (ptrace (PTRACE_SETREGSET, tid, NT_FPREGSET,
		      (PTRACE_TYPE_ARG3) &iov) == -1)
	    perror_with_name (_("Couldn't set registers"));
	}
    }

  /* VLENB isn't writable, so we'll skip considering that one, if it's being
     specified alone.  */
  if ((regnum >= RISCV_V0_REGNUM && regnum <= RISCV_V31_REGNUM)
      || (regnum == RISCV_CSR_VSTART_REGNUM)
      || (regnum == RISCV_CSR_VL_REGNUM)
      || (regnum == RISCV_CSR_VTYPE_REGNUM)
      || (regnum == RISCV_CSR_VCSR_REGNUM)
      || (regnum == RISCV_CSR_VXSAT_REGNUM)
      || (regnum == RISCV_CSR_VXRM_REGNUM)
      || (regnum == -1))
    {
      struct iovec iov;
      struct __riscv_vregs vregs;

      iov.iov_base = &vregs;
      iov.iov_len = sizeof (vregs);

      if (ptrace (PTRACE_GETREGSET, tid, NT_RISCV_VECTOR,
		  (PTRACE_TYPE_ARG3) & iov) == 0)
	{
	  fill_vregset (regcache, &vregs, regnum);

	  if (ptrace (PTRACE_SETREGSET, tid, NT_RISCV_VECTOR,
		      (PTRACE_TYPE_ARG3) & iov) == -1)
	    perror_with_name (_("Couldn't set vector registers"));
	}
    }


  /* Access to CSRs has potential security issues, don't support them for
     now.  */
}

/* Initialize RISC-V Linux native support.  */

void _initialize_riscv_linux_nat ();
void
_initialize_riscv_linux_nat ()
{
  /* Register the target.  */
  linux_target = &the_riscv_linux_nat_target;
  add_inf_child_target (&the_riscv_linux_nat_target);
}
