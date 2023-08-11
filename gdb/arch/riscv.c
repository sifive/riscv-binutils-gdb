/* Copyright (C) 2018-2023 Free Software Foundation, Inc.

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
#include "riscv.h"
#include <stdlib.h>
#include <unordered_map>

#include "../features/riscv/32bit-cpu.c"
#include "../features/riscv/64bit-cpu.c"
#include "../features/riscv/32bit-fpu.c"
#include "../features/riscv/64bit-fpu.c"
#include "../features/riscv/rv32e-xregs.c"

#include "opcode/riscv-opc.h"

#ifndef GDBSERVER
#define STATIC_IN_GDB static
#else
#define STATIC_IN_GDB
#endif

static int
create_feature_riscv_vector_from_features (struct target_desc *result,
					   long regnum,
					   const struct riscv_gdbarch_features
					   features);


/* See arch/riscv.h.  */

STATIC_IN_GDB target_desc_up
riscv_create_target_description (const struct riscv_gdbarch_features features)
{
  /* Now we should create a new target description.  */
  target_desc_up tdesc = allocate_target_description ();

#ifndef IN_PROCESS_AGENT
  std::string arch_name = "riscv";

  if (features.xlen == 4)
    {
      if (features.embedded)
	arch_name.append (":rv32e");
      else
	arch_name.append (":rv32i");
    }
  else if (features.xlen == 8)
    arch_name.append (":rv64i");
  else if (features.xlen == 16)
    arch_name.append (":rv128i");

  if (features.flen == 4)
    arch_name.append ("f");
  else if (features.flen == 8)
    arch_name.append ("d");
  else if (features.flen == 16)
    arch_name.append ("q");

  set_tdesc_architecture (tdesc.get (), arch_name.c_str ());
#endif

  long regnum = 0;

  /* For now we only support creating 32-bit or 64-bit x-registers.  */
  if (features.xlen == 4)
    {
      if (features.embedded)
	regnum = create_feature_riscv_rv32e_xregs (tdesc.get (), regnum);
      else
	regnum = create_feature_riscv_32bit_cpu (tdesc.get (), regnum);
    }
  else if (features.xlen == 8)
    regnum = create_feature_riscv_64bit_cpu (tdesc.get (), regnum);

  /* For now we only support creating 32-bit or 64-bit f-registers.  */
  if (features.flen == 4)
    regnum = create_feature_riscv_32bit_fpu (tdesc.get (), regnum);
  else if (features.flen == 8)
    regnum = create_feature_riscv_64bit_fpu (tdesc.get (), regnum);

  if (features.vlen != 0)
    regnum =
      create_feature_riscv_vector_from_features (tdesc.get (),
						 RISCV_V0_REGNUM, features);

  return tdesc;
}


/* Usually, these target_desc instances are static for an architecture, and expressable
   in XML format, but this is a special case where length of a RISC-V vector register
   is not architecturally fixed to a constant (the maximum width is a defined constant,
   but it's nice to tailor a target description the actual VLENB) */
static int
create_feature_riscv_vector_from_features (struct target_desc *result,
					   long regnum,
					   const struct riscv_gdbarch_features
					   features)
{
  struct tdesc_feature *feature;
  unsigned long bitsize;

  feature = tdesc_create_feature (result, "org.gnu.gdb.riscv.vector");
  tdesc_type *element_type;

  /* if VLENB is present (which we know it is present if execution reaches this function),
     then we know by definition that it is at least 4 bytes wide */
  
  element_type = tdesc_named_type (feature, "uint8");
  tdesc_create_vector (feature, "bytes", element_type, features.vlen);

  element_type = tdesc_named_type (feature, "uint16");
  tdesc_create_vector (feature, "shorts", element_type, features.vlen / 2);

  element_type = tdesc_named_type (feature, "uint32");
  tdesc_create_vector (feature, "words", element_type, features.vlen / 4);

  /* Need VLENB value checks for element chunks larger than 4 bytes */
  
  if (features.vlen >= 8)
    {
      element_type = tdesc_named_type (feature, "uint64");
      tdesc_create_vector (feature, "longs", element_type, features.vlen / 8);
    }

  /* QEMU and OpenOCD include the quads width in their target descriptions, so we're
     following that precedent, even if it's not particularly useful in practice, yet */
  
  if (features.vlen >= 16)
    {
      element_type = tdesc_named_type (feature, "uint128");
      tdesc_create_vector (feature, "quads", element_type,
			   features.vlen / 16);
    }

  tdesc_type_with_fields *type_with_fields;
  type_with_fields = tdesc_create_union (feature, "riscv_vector");
  tdesc_type *field_type;

  if (features.vlen >= 16)
    {
      field_type = tdesc_named_type (feature, "quads");
      tdesc_add_field (type_with_fields, "q", field_type);
    }
  if (features.vlen >= 8)
    {
      field_type = tdesc_named_type (feature, "longs");
      tdesc_add_field (type_with_fields, "l", field_type);
    }

  /* Again, we know vlenb is >= 4, so no if guards needed for words/shorts/bytes */
  
  field_type = tdesc_named_type (feature, "words");
  tdesc_add_field (type_with_fields, "w", field_type);
  
  field_type = tdesc_named_type (feature, "shorts");
  tdesc_add_field (type_with_fields, "s", field_type);
  
  field_type = tdesc_named_type (feature, "bytes");
  tdesc_add_field (type_with_fields, "b", field_type);

  tdesc_create_reg (feature, "vstart", RISCV_CSR_VSTART_REGNUM, 1, NULL, features.xlen * 8, "int");
  tdesc_create_reg (feature, "vxsat", RISCV_CSR_VXSAT_REGNUM, 1, NULL, features.xlen * 8, "int");
  tdesc_create_reg (feature, "vxrm", RISCV_CSR_VXRM_REGNUM, 1, NULL, features.xlen * 8, "int");  
  tdesc_create_reg (feature, "vcsr", RISCV_CSR_VCSR_REGNUM, 1, NULL, features.xlen * 8, "int");
  tdesc_create_reg (feature, "vl", RISCV_CSR_VL_REGNUM, 1, NULL, features.xlen * 8, "int");
  tdesc_create_reg (feature, "vtype", RISCV_CSR_VTYPE_REGNUM, 1, NULL, features.xlen * 8, "int");
  tdesc_create_reg (feature, "vlenb", RISCV_CSR_VLENB_REGNUM, 1, NULL, features.xlen * 8, "int");

  bitsize = features.vlen * 8;
  tdesc_create_reg (feature, "v0", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v1", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v2", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v3", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v4", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v5", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v6", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v7", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v8", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v9", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v10", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v11", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v12", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v13", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v14", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v15", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v16", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v17", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v18", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v19", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v20", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v21", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v22", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v23", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v24", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v25", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v26", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v27", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v28", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v29", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v30", regnum++, 1, NULL, bitsize,
		    "riscv_vector");
  tdesc_create_reg (feature, "v31", regnum++, 1, NULL, bitsize,
		    "riscv_vector");


  return regnum;
}


#ifndef GDBSERVER

/* Wrapper used by std::unordered_map to generate hash for feature set.  */
struct riscv_gdbarch_features_hasher
{
  std::size_t
  operator() (const riscv_gdbarch_features &features) const noexcept
  {
    return features.hash ();
  }
};

/* Cache of previously seen target descriptions, indexed by the feature set
   that created them.  */
static std::unordered_map<riscv_gdbarch_features,
			  const target_desc_up,
			  riscv_gdbarch_features_hasher> riscv_tdesc_cache;

/* See arch/riscv.h.  */

const target_desc *
riscv_lookup_target_description (const struct riscv_gdbarch_features features)
{
  /* Lookup in the cache.  If we find it then return the pointer out of
     the target_desc_up (which is a unique_ptr).  This is safe as the
     riscv_tdesc_cache will exist until GDB exits.  */
  const auto it = riscv_tdesc_cache.find (features);
  if (it != riscv_tdesc_cache.end ())
    return it->second.get ();

  target_desc_up tdesc (riscv_create_target_description (features));

  /* Add to the cache, and return a pointer borrowed from the
     target_desc_up.  This is safe as the cache (and the pointers
     contained within it) are not deleted until GDB exits.  */
  target_desc *ptr = tdesc.get ();
  riscv_tdesc_cache.emplace (features, std::move (tdesc));
  return ptr;
}

#endif /* !GDBSERVER */
