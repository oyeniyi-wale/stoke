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

/* mpz_fdiv_q_ui -- Division rounding the quotient towards -infinity.
   The remainder gets the same sign as the denominator.

Copyright 1994, 1995, 1996, 1999, 2001, 2002, 2004 Free Software Foundation,
Inc.

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

unsigned long int
mpz_fdiv_q_ui (mpz_ptr quot, mpz_srcptr dividend, unsigned long int divisor)
{
  mp_size_t ns, nn, qn;
  mp_ptr np, qp;
  mp_limb_t rl;

  if (divisor == 0)
    DIVIDE_BY_ZERO;

  ns = SIZ(dividend);
  if (ns == 0)
    {
      SIZ(quot) = 0;
      return 0;
    }

  nn = ABS(ns);
  MPZ_REALLOC (quot, nn);
  qp = PTR(quot);
  np = PTR(dividend);

#if BITS_PER_ULONG > GMP_NUMB_BITS  /* avoid warnings about shift amount */
  if (divisor > GMP_NUMB_MAX)
    {
      mp_limb_t dp[2], rp[2];

      if (nn == 1)		/* tdiv_qr requirements; tested above for 0 */
	{
	  qp[0] = 0;
	  rl = np[0];
	  qn = 1;		/* a white lie, fixed below */
	}
      else
	{
	  dp[0] = divisor & GMP_NUMB_MASK;
	  dp[1] = divisor >> GMP_NUMB_BITS;
	  mpn_tdiv_qr (qp, rp, (mp_size_t) 0, np, nn, dp, (mp_size_t) 2);
	  rl = rp[0] + (rp[1] << GMP_NUMB_BITS);
	  qn = nn - 2 + 1;
	}

      if (rl != 0 && ns < 0)
	{
	  mpn_incr_u (qp, (mp_limb_t) 1);
	  rl = divisor - rl;
	}

      qn -= qp[qn - 1] == 0; qn -= qn != 0 && qp[qn - 1] == 0;
    }
  else
#endif
    {
      rl = mpn_divrem_1 (qp, (mp_size_t) 0, np, nn, (mp_limb_t) divisor);

      if (rl != 0 && ns < 0)
	{
	  mpn_incr_u (qp, (mp_limb_t) 1);
	  rl = divisor - rl;
	}

      qn = nn - (qp[nn - 1] == 0);
    }

  SIZ(quot) = ns >= 0 ? qn : -qn;
  return rl;
}
