// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <array>
#include <string>
#include <utility>

#include "tools/io/generic.h"
#include "tools/io/failed_verification_action.h"

using namespace std;
using namespace stoke;

namespace {

array<pair<string, FailedVerificationAction>, 4> pts {{
    {"quit", FailedVerificationAction::QUIT},
    {"add_counterexample", FailedVerificationAction::ADD_COUNTEREXAMPLE}
  }
};

} // namespace

namespace stoke {

void FailedVerificationActionReader::operator()(std::istream& is, FailedVerificationAction& t) {
  string s;
  is >> s;
  if (!generic_read(pts, s, t)) {
    is.setstate(ios::failbit);
  }
}

void FailedVerificationActionWriter::operator()(std::ostream& os, const FailedVerificationAction t) {
  string s;
  generic_write(pts, s, t);
  os << s;
}

} // namespace stoke
