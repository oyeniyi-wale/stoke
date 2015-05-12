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

/* Test sub_ddmmss.

Copyright 2004 Free Software Foundation, Inc.

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
#include "longlong.h"
#include "tests.h"


void
check_data (void)
{
#define M  MP_LIMB_T_MAX

  static const struct {
    mp_limb_t  want_dh,want_dl, mh,ml, sh,sl;
  } data[] = {
    { 0,0,  0,0,  0,0 },
    { 0,0,  0,1,  0,1 },
    { 0,0,  1,2,  1,2 },

    { 0,1,  0,2,  0,1 },
    { 0,M,  1,0,  0,1 },
    { M,M,  0,0,  0,1 },

    { M,M,  0,M-1,  0,M },
    { 0,0,  0,M-1,  0,M-1 },
    { 0,1,  0,M-1,  0,M-2 },
  };
  int  i;
  mp_limb_t  got_dh, got_dl;

  for (i = 0; i < numberof (data); i++)
    {
      sub_ddmmss (got_dh,got_dl, data[i].mh,data[i].ml, data[i].sh,data[i].sl);
      if (got_dh != data[i].want_dh || got_dl != data[i].want_dl)
        {
          printf ("check_data wrong at data[%d]\n", i);
          mp_limb_trace ("  mh", data[i].mh);
          mp_limb_trace ("  ml", data[i].ml);
          mp_limb_trace ("  sh", data[i].sh);
          mp_limb_trace ("  sl", data[i].sl);
          mp_limb_trace ("  want dh", data[i].want_dh);
          mp_limb_trace ("  want dl", data[i].want_dl);
          mp_limb_trace ("  got dh ", got_dh);
          mp_limb_trace ("  got dl ", got_dl);
          abort ();
        }
    }
}

void
check_random (void)
{
  mp_limb_t  want_dh,want_dl, got_dh,got_dl, mh,ml, sh,sl;
  int  i;

  for (i = 0; i < 20; i++)
    {
      mh = urandom ();
      ml = urandom ();
      sh = urandom ();
      sl = urandom ();

      refmpn_sub_ddmmss (&want_dh,&want_dl, mh,ml, sh,sl);

      sub_ddmmss (got_dh,got_dl, mh,ml, sh,sl);

      if (got_dh != want_dh || got_dl != want_dl)
        {
          printf ("check_data wrong at data[%d]\n", i);
          mp_limb_trace ("  mh", mh);
          mp_limb_trace ("  ml", ml);
          mp_limb_trace ("  sh", sh);
          mp_limb_trace ("  sl", sl);
          mp_limb_trace ("  want dh", want_dh);
          mp_limb_trace ("  want dl", want_dl);
          mp_limb_trace ("  got dh ", got_dh);
          mp_limb_trace ("  got dl ", got_dl);
          abort ();
        }
    }
}

int
main (void)
{
  tests_start ();
  mp_trace_base = -16;

  check_data ();
  check_random ();

  tests_end ();
  exit (0);
}
