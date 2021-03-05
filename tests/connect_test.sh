#!/bin/bash

testConnect() {
  local parent=$(dirname ${BASH_SOURCE[0]})
  output=$( . $parent/../src/connect.sh | tee /dev/tty )
  vpn_pid=$(perl $parent/helpers/vpn_pid.pl "$output")
  assertTrue  "[ -n '$vpn_pid' ]"
  sudo kill $vpn_pid
}

# setopt shwordsplit
# Load shUnit2.
. ../libraries/shunit2/shunit2