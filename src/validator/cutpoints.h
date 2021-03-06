// Copyright 2013-2016 Stanford University
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

#ifndef STOKE_SRC_VALIDATOR_CUTPOINTS_H
#define STOKE_SRC_VALIDATOR_CUTPOINTS_H

#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"

#include <vector>
#include <map>

//#define DEBUG_CUTPOINTS_DATA

namespace stoke {

class Cutpoints {

public:

  /** Initiates computation of the cutpoints for target/rewrite. */
  Cutpoints(const Cfg& target, const Cfg& rewrite, Sandbox& sandbox) :
    target_(target), rewrite_(rewrite), sandbox_(sandbox) {
    error_ = "";
    compute();
  }

  /** Get testcases representing the data at a given cutpoint. */
  std::vector<CpuState> data_at(size_t cutpt, bool is_rewrite) {
    std::vector<CpuState> results;

    auto chosen_cutpoints = cutpoint_options_[pos_];
    auto cutpoints = is_rewrite ? chosen_cutpoints.second : chosen_cutpoints.first;
    auto blk = cutpoints[cutpt];

    auto& traces = is_rewrite ? rewrite_traces_ : target_traces_;
    for (auto trace : traces) {
      for (auto entry : trace) {
        if (entry.block_id == blk) {
          results.push_back(entry.cs);
        }
      }
    }

#ifdef DEBUG_CUTPOINTS_DATA
    std::cout << "At cutpt " << cutpt << " the " << (is_rewrite ? "rewrite" : "target") << " has "
              << results.size() << " states." << std::endl;
    std::cout << "   (this is at block " << blk << ")" << std::endl;
    for (auto it : results)
      std::cout << it << std::endl;
#endif

    return results;
  }

  /** Get cutpoint locations. */
  std::vector<Cfg::id_type> target_cutpoint_locations() {
    return cutpoint_options_[pos_].first;
  }
  /** Get cutpoint locations. */
  std::vector<Cfg::id_type> rewrite_cutpoint_locations() {
    return cutpoint_options_[pos_].second;
  }

  /** Get the number of cutpoints found. */
  size_t cutpoint_count() {
    return cutpoint_options_[pos_].first.size();
  }

  /** Are there more options for cutpoints? */
  bool has_more() {
    return pos_+1 < cutpoint_options_.size();
  }
  /** Go to the next cutpoint option. */
  void next() {
    pos_ = pos_ + 1;
  }

  bool has_error() {
    return error_ != "";
  }
  std::string get_error() {
    return error_;
  }

  void test() {
    for (size_t i = 1; i < 6; ++i) {
      std::cout << "Computing permutations of { 1 .. " << i << " }" << std::endl;

      auto perms = get_permutations(i);
      for (auto perm : perms) {
        for (auto k : perm) {
          std::cout << "  " << k;
        }
        std::cout << std::endl;
      }
    }
  }

private:

  struct TracePoint {
    Cfg::id_type block_id;
    CpuState cs;
  };

  /** This data structure represents a list of target/rewrite cutpoints */
  typedef std::pair<std::vector<Cfg::id_type>, std::vector<Cfg::id_type>> CutpointList;

  /** This is the main function that computes all the cutpoints and fills the
   * "ANSWER STORAGE" data structures below. */
  void compute();

  /** Get a complete trace from running the Cfg on a testcase and save into 'trace' */
  void mine_data(const Cfg& cfg, size_t testcase, std::vector<TracePoint>& trace);

  /** Get a list of all possible sets of cutpoints. */
  std::vector<CutpointList> get_possible_cutpoints();

  /** Check if a selection of cutpoints is correct. */
  bool check_cutpoints(CutpointList& cutpoints);

  /** Get a list of permutations of { 1 .. n }.  Used for guessing cutpoints.*/
  static std::vector<std::vector<size_t>> get_permutations(size_t n);

  /** Check if a basic block ends with a jump or not. */
  static bool ends_with_jump(const Cfg& cfg, Cfg::id_type block);


  /** Helper function:  Get the cutpoints out of a trace. */
  std::vector<Cutpoints::TracePoint> filter_cutpoints(std::vector<TracePoint>& trace, std::vector<Cfg::id_type>& basic_blocks);

  /** Helper function: Find the cutpoint number that a particular trace point / basic block corresponds to */
  size_t which_cutpoint(TracePoint pt, std::vector<Cfg::id_type>& basic_blocks);

  /** For debugging: print a set of cutpoints of the target / rewrite */
  void print_option(Cutpoints::CutpointList& option);

  ////////////////////////////// DATA-STORAGE //////////////////////////////////

  Cfg target_;
  Cfg rewrite_;
  Sandbox sandbox_;

  std::vector<std::vector<TracePoint>> target_traces_;
  std::vector<std::vector<TracePoint>> rewrite_traces_;

  ////////////////////////////// ANSWER STORAGE ////////////////////////////////

  std::vector<CutpointList> cutpoint_options_;
  size_t pos_;

  std::string error_;

  ////////////////////////////// DATA-MINING CALLBACKS //////////////////////////////////

  struct CallbackParam {
    Cfg::id_type block_id;
    std::vector<TracePoint>* trace;
  };

  /** The callback used for gathering data from each of the cutpoints */
  static void callback(const StateCallbackData& data, void* arg);

};

} // namespace stoke

#endif
