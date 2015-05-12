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

/* double mpf_get_d_2exp (signed long int *exp, mpf_t src).

Copyright 2001, 2002, 2003, 2004 Free Software Foundation, Inc.

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

#include "gmp.h"
#include "gmp-impl.h"
#include "longlong.h"


double
mpf_get_d_2exp (signed long int *exp2, mpf_srcptr src)
{
  mp_size_t size, abs_size;
  mp_srcptr ptr;
  int cnt;
  long exp;

  size = SIZ(src);
  if (UNLIKELY (size == 0))
    {
      *exp2 = 0;
      return 0.0;
    }

  ptr = PTR(src);
  abs_size = ABS (size);
  count_leading_zeros (cnt, ptr[abs_size - 1]);
  cnt -= GMP_NAIL_BITS;

  exp = EXP(src) * GMP_NUMB_BITS - cnt;
  *exp2 = exp;

  return mpn_get_d (ptr, abs_size, (mp_size_t) 0,
                    (long) - (abs_size * GMP_NUMB_BITS - cnt));
}
