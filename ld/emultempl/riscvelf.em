# This shell script emits a C file. -*- C -*-
#   Copyright (C) 2004-2025 Free Software Foundation, Inc.
#
# This file is part of the GNU Binutils.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston,
# MA 02110-1301, USA.

fragment <<EOF

#include "ldmain.h"
#include "ldctor.h"
#include "elf/riscv.h"
#include "elfxx-riscv.h"

static struct riscv_elf_params params = { .relax_gp = 1,
					  .check_uleb128 = 0,
					  .report_zicfilp_unlabeled = CFI_REPORT_NONE,
					  .report_zicfilp_func_sig = CFI_REPORT_NONE,
					  .report_zicfiss = CFI_REPORT_NONE};
EOF

# Define some shell vars to insert bits of code into the standard elf
# parse_args and list_options functions.  */
PARSE_AND_LIST_LONGOPTS=${PARSE_AND_LIST_LONGOPTS}'
    { "relax-gp", no_argument, NULL, OPTION_RELAX_GP },
    { "no-relax-gp", no_argument, NULL, OPTION_NO_RELAX_GP },
    { "check-uleb128", no_argument, NULL, OPTION_CHECK_ULEB128 },
    { "no-check-uleb128", no_argument, NULL, OPTION_NO_CHECK_ULEB128 },
'

PARSE_AND_LIST_OPTIONS=${PARSE_AND_LIST_OPTIONS}'
  fprintf (file, _("  --relax-gp                  Perform GP relaxation\n"));
  fprintf (file, _("  --no-relax-gp               Don'\''t perform GP relaxation\n"));
  fprintf (file, _("  --check-uleb128             Check if SUB_ULEB128 has non-zero addend\n"));
  fprintf (file, _("  --no-check-uleb128          Don'\''t check if SUB_ULEB128 has non-zero addend\n"));
  fprintf (file, _("\
  -z zicfilp-unlabeled-report[=none|warning|error]   Emit warning/error on mismatch of CFI_LP_UNLABELED markings between input objects and ouput.\n\
                                         none: Does not emit any warning/error messages.\n\
                                         warning (default): Emit warning when the input objects are missing CFI_LP_UNLABELED markings\n\
                                           and output have CFI_LP_UNLABELED marking.\n\
                                         error: Emit error when the input objects are missing CFI_LP_UNLABELED markings\n\
                                           and output have CFI_LP_UNLABELED marking.\n"));
  fprintf (file, _("\
  -z zicfilp-func-sig-report[=none|warning|error]   Emit warning/error on mismatch of CFI_LP_FUNC_SIG markings between input objects and ouput.\n\
                                         none: Does not emit any warning/error messages.\n\
                                         warning (default): Emit warning when the input objects are missing CFI_LP_FUNC_SIG markings\n\
                                           and output have CFI_LP_FUNC_SIG marking.\n\
                                         error: Emit error when the input objects are missing CFI_LP_FUNC_SIG markings\n\
                                           and output have CFI_LP_FUNC_SIG marking.\n"));
  fprintf (file, _("\
  -z zicfiss-report[=none|warning|error]   Emit warning/error on mismatch of CFI_SS markings between input objects and ouput.\n\
                                         none: Does not emit any warning/error messages.\n\
                                         warning (default): Emit warning when the input objects are missing CFI_SS markings\n\
                                           and output have CFI_SS marking.\n\
                                         error: Emit error when the input objects are missing CFI_SS markings\n\
                                           and output have CFI_SS marking.\n"));
'

PARSE_AND_LIST_ARGS_CASES=${PARSE_AND_LIST_ARGS_CASES}'
    case OPTION_RELAX_GP:
      params.relax_gp = 1;
      break;

    case OPTION_NO_RELAX_GP:
      params.relax_gp = 0;
      break;

    case OPTION_CHECK_ULEB128:
      params.check_uleb128 = 1;
      break;

    case OPTION_NO_CHECK_ULEB128:
      params.check_uleb128 = 0;
      break;
'

PARSE_AND_LIST_ARGS_CASE_Z='
     else if (riscv_parse_zicfilp_unlabeled_report_option (optarg))
	{}
     else if (riscv_parse_zicfilp_func_sig_report_option (optarg))
	{}
     else if (riscv_parse_zicfiss_report_option (optarg))
	{}
'

fragment <<EOF

#define COMPILE_TIME_STRLEN(s) \
  (sizeof(s) - 1)

static bool
riscv_parse_cfi_report_option (const char *_optarg,
			       const char *report_opt,
			       const size_t report_opt_len,
			       bool allow_empty_value,
			       riscv_cfi_report_type *type)
{
  if (strncmp (_optarg, report_opt, report_opt_len) != 0)
    return false;

  if (strcmp (_optarg + report_opt_len, "=warning") == 0)
    *type = CFI_REPORT_WARN;
  else if (strcmp (_optarg + report_opt_len, "=none") == 0)
    *type = CFI_REPORT_NONE;
  else if (strcmp (_optarg + report_opt_len, "=error") == 0)
    *type = CFI_REPORT_ERROR;
  else if (allow_empty_value && strlen (_optarg) == report_opt_len)
    *type = CFI_REPORT_WARN;
  else
    einfo (_("%X%P: error: unrecognized value '-z %s'\n"), _optarg);

  return true;
}

static bool
riscv_parse_zicfilp_unlabeled_report_option (const char *_optarg)
{
  #define CFI_LP_UNLABELED_REPORT      "zicfilp-unlabeled-report"
  #define CFI_LP_UNLABELED_REPORT_LEN  COMPILE_TIME_STRLEN (CFI_LP_UNLABELED_REPORT)

  return riscv_parse_cfi_report_option (_optarg, CFI_LP_UNLABELED_REPORT,
    CFI_LP_UNLABELED_REPORT_LEN, true, &params.report_zicfilp_unlabeled);

  #undef CFI_LP_UNLABELED_REPORT
  #undef CFI_LP_UNLABELED_REPORT_LEN
}

static bool
riscv_parse_zicfilp_func_sig_report_option (const char *_optarg)
{
  #define CFI_LP_FUNC_SIG_REPORT      "zicfilp-func-sig-report"
  #define CFI_LP_FUNC_SIG_REPORT_LEN  COMPILE_TIME_STRLEN (CFI_LP_FUNC_SIG_REPORT)

  return riscv_parse_cfi_report_option (_optarg, CFI_LP_FUNC_SIG_REPORT,
    CFI_LP_FUNC_SIG_REPORT_LEN, true, &params.report_zicfilp_func_sig);

  #undef CFI_LP_FUNC_SIG_REPORT
  #undef CFI_LP_FUNC_SIG_REPORT
}

static bool
riscv_parse_zicfiss_report_option (const char *_optarg)
{
  #define CFI_SS_REPORT      "zicfiss-report"
  #define CFI_SS_REPORT_LEN  COMPILE_TIME_STRLEN (CFI_SS_REPORT)

  return riscv_parse_cfi_report_option (_optarg, CFI_SS_REPORT,
    CFI_SS_REPORT_LEN, true, &params.report_zicfiss);

  #undef CFI_SS_REPORT
  #undef CFI_SS_REPORT_LEN
}

static void
riscv_elf_before_allocation (void)
{
  gld${EMULATION_NAME}_before_allocation ();

  if (link_info.discard == discard_sec_merge)
    link_info.discard = discard_l;

  if (!bfd_link_relocatable (&link_info))
    {
      /* We always need at least some relaxation to handle code alignment.  */
      if (RELAXATION_DISABLED_BY_USER)
	TARGET_ENABLE_RELAXATION;
      else
	ENABLE_RELAXATION;
    }

  link_info.relax_pass = 2;
}

static void
gld${EMULATION_NAME}_after_allocation (void)
{
  int need_layout = 0;

  /* Don't attempt to discard unused .eh_frame sections until the final link,
     as we can't reliably tell if they're used until after relaxation.  */
  if (!bfd_link_relocatable (&link_info))
    {
      need_layout = bfd_elf_discard_info (link_info.output_bfd, &link_info);
      if (need_layout < 0)
	{
	  einfo (_("%X%P: .eh_frame/.stab edit: %E\n"));
	  return;
	}
    }

  /* PR 27566, if the phase of data segment is exp_seg_relro_adjust,
     that means we are still adjusting the relro, and shouldn't do the
     relaxations at this stage.  Otherwise, we will get the symbol
     values beofore handling the relro, and may cause truncated fails
     when the relax range crossing the data segment.  One of the solution
     is to monitor the data segment phase while relaxing, to know whether
     the relro has been handled or not.

     I think we probably need to record more information about data
     segment or alignments in the future, to make sure it is safe
     to doing relaxations.  */
  enum phase_enum *phase = &(expld.dataseg.phase);
  bfd_elf${ELFSIZE}_riscv_set_data_segment_info (&link_info, (int *) phase);

  ldelf_map_segments (need_layout);
}

/* This is a convenient point to tell BFD about target specific flags.
   After the output has been created, but before inputs are read.  */

static void
riscv_create_output_section_statements (void)
{
  /* See PR 22920 for an example of why this is necessary.  */
  if (strstr (bfd_get_target (link_info.output_bfd), "riscv") == NULL)
    {
      /* The RISC-V backend needs special fields in the output hash structure.
	 These will only be created if the output format is a RISC-V format,
	 hence we do not support linking and changing output formats at the
	 same time.  Use a link followed by objcopy to change output formats.  */
      fatal (_("%P: error: cannot change output format"
	       " whilst linking %s binaries\n"), "RISC-V");
      return;
    }

  riscv_elf${ELFSIZE}_set_options (&link_info, &params);
}

EOF

LDEMUL_BEFORE_ALLOCATION=riscv_elf_before_allocation
LDEMUL_AFTER_ALLOCATION=gld${EMULATION_NAME}_after_allocation
LDEMUL_CREATE_OUTPUT_SECTION_STATEMENTS=riscv_create_output_section_statements
