// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/* Cray T90 CFP gmp-mparam.h -- Compiler/machine parameter header file.

Copyright 1991, 1993, 1994, 1996, 2000, 2001, 2002, 2003, 2004 Free Software
Foundation, Inc.

This file is part of the GNU MP Library.

The GNU MP Library is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation; either version 3 of the License, or (at your
option) any later version.

The GNU MP Library is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
License for more details.

You should have received a copy of the GNU Lesser General Public License
along with the GNU MP Library.  If not, see http://www.gnu.org/licenses/.  */

#define GMP_LIMB_BITS 64
#define BYTES_PER_MP_LIMB 8

#if 0
#define UMUL_TIME  519
#define UDIV_TIME 2360
#endif

/* T90 Unicos 10.0.X in CFP mode */

/* Generated by tuneup.c, 2004-02-07, system compiler */

#define MUL_TOOM22_THRESHOLD             71
#define MUL_TOOM33_THRESHOLD            131

#define SQR_BASECASE_THRESHOLD           32
#define SQR_TOOM2_THRESHOLD             199
#define SQR_TOOM3_THRESHOLD             363

#define DIV_SB_PREINV_THRESHOLD           0  /* (preinv always) */
#define DIV_DC_THRESHOLD                996
#define POWM_THRESHOLD                  601

#define HGCD_THRESHOLD                  964
#define GCD_ACCEL_THRESHOLD               3
#define GCD_DC_THRESHOLD               2874
#define JACOBI_BASE_METHOD                2

#define DIVREM_1_NORM_THRESHOLD           0  /* preinv always */
#define DIVREM_1_UNNORM_THRESHOLD         0  /* always */
#define MOD_1_NORM_THRESHOLD              0  /* always */
#define MOD_1_UNNORM_THRESHOLD            0  /* always */
#define USE_PREINV_DIVREM_1               1  /* preinv always */
#define USE_PREINV_MOD_1                  1  /* preinv always */
#define DIVREM_2_THRESHOLD                0  /* preinv always */
#define DIVEXACT_1_THRESHOLD              0  /* always */
#define MODEXACT_1_ODD_THRESHOLD          0  /* always */

#define GET_STR_DC_THRESHOLD             26
#define GET_STR_PRECOMPUTE_THRESHOLD     42
#define SET_STR_THRESHOLD            145756

#define MUL_FFT_TABLE  { 272, 544, 1088, 2304, 5120, 12288, 49152, 0 }
#define MUL_FFT_MODF_THRESHOLD          200
#define MUL_FFT_THRESHOLD              1664

#define SQR_FFT_TABLE  { 1008, 2080, 3904, 7936, 17408, 45056, 0 }
#define SQR_FFT_MODF_THRESHOLD          600
#define SQR_FFT_THRESHOLD              2976
