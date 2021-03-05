#!/bin/bash

testGetMyToken() {
  get_my_token
  assertEquals ${#token} 124
}

oneTimeSetUp() {
  # Load include to test.
  # . ./src/connect.sh
  . ../src/helpers/get_my_token.sh 
}

# Load shUnit2.
. ../libraries/shunit2/shunit2