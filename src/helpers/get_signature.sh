#!/bin/bash

function get_signature(){
    local parent=$(dirname ${BASH_SOURCE[0]})
    local ip=$1
    . $parent/get_my_token.sh
    get_my_token
    # echo Token got $token
    signature=$(curl -k "https://$ip:19999/getSignature?token=$token")
    # echo $signature
}