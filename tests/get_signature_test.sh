#!/bin/bash

testGetSignature() {
  get_my_region
  get_signature $ovpn_tcp
  assertEquals ${#signature} 63
}

oneTimeSetUp() {
  # Load include to test.
  # . ./src/connect.sh
  . ../src/helpers/get_signature.sh
  . ../src/helpers/get_my_region.sh 
}

# Load shUnit2.
. ../libraries/shunit2/shunit2