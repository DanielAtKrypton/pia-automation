#!/bin/bash

testGetMyRegion() {
  local parent=$(dirname ${BASH_SOURCE[0]})
  local ip_regex=$parent/../src/helpers/ip_pattern.pl
  get_my_region
  assertTrue  "[ -n '$(perl $ip_regex "$meta_services" "")' ]"
  assertTrue  "[ -n '$(perl $ip_regex "$wire_guard" "")' ]"
  assertTrue  "[ -n '$(perl $ip_regex "$ovpn_tcp" "")' ]"
  assertTrue  "[ -n '$(perl $ip_regex "$ovpn_udp" "")' ]"
  assertTrue  "[ -n '$host' ]"
}

oneTimeSetUp() {
  # Load include to test.
  # . ./src/connect.sh
  . ../src/helpers/get_my_region.sh
}

# Load shUnit2.
. ../libraries/shunit2/shunit2