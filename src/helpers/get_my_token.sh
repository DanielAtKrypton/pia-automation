#!/bin/dash

function get_my_token(){
    local parent=$(dirname $(realpath $0))
    local parent_folder=$parent/src/helpers
    local output=$(sudo PIA_USER=$PIA_USER PIA_PASS=$PIA_PASS  $parent/libraries/manual-connections/get_token.sh)
    # echo $output
    token=$(perl $parent_folder/regex_pattern.pl $output)
    # echo $token
}