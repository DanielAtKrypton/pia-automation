#!/bin/dash

function get_signature(){
    local parent=$(dirname $(realpath $0))
    local parent_folder=$parent/src/helpers
    local ip=$1
    . $parent_folder/get_my_token.sh
    get_my_token
    # echo Token got $TOKEN
    response=$(curl -k "https://$ip:19999/getSignature?token=$token")
    # echo $response
}