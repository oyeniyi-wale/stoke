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

/* Test gmp_urandomm_ui.

Copyright 2003, 2005 Free Software Foundation, Inc.

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

#include <stdio.h>
#include <stdlib.h>
#include "gmp.h"
#include "gmp-impl.h"
#include "tests.h"

/* Expect numbers generated by rstate to obey the limit requested. */
void
check_one (const char *name, gmp_randstate_ptr rstate)
{
  static const unsigned long  n_table[] = {
    1, 2, 3, 4, 5, 6, 7, 8,
    123, 456, 789,

    255, 256, 257,
    1023, 1024, 1025,
    32767, 32768, 32769,

    ULONG_MAX/2-2, ULONG_MAX/2-1, ULONG_MAX/2, ULONG_MAX/2+1, ULONG_MAX/2+2,

    ULONG_MAX-2, ULONG_MAX-1, ULONG_MAX,
  };

  unsigned long  got, n;
  int    i, j;

  for (i = 0; i < numberof (n_table); i++)
    {
      n = n_table[i];

      for (j = 0; j < 5; j++)
        {
          got = gmp_urandomm_ui (rstate, n);
          if (got >= n)
            {
              printf ("Return value out of range:\n");
              printf ("  algorithm: %s\n", name);
              printf ("  n:     %#lx\n", n);
              printf ("  got:   %#lx\n", got);
              abort ();
            }
        }
    }
}


int
main (int argc, char *argv[])
{
  tests_start ();

  call_rand_algs (check_one);

  tests_end ();
  exit (0);
}
