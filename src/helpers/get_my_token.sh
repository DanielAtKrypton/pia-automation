#!/bin/bash

function get_my_token(){
    local parent=$(dirname ${BASH_SOURCE[0]})
    local output=`sudo PIA_USER=$PIA_USER PIA_PASS=$PIA_PASS $parent/../../libraries/manual-connections/get_token.sh`
    token=`perl $parent/regex_pattern.pl "$output"`
}