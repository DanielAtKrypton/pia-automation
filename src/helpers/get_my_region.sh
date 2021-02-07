#!/bin/dash

function get_my_region(){
    local parent=$(dirname $(realpath $0))
    local parent_folder=$parent/src/helpers
    . $parent_folder/get_my_token.sh
    get_my_token
    local output=$(sudo PIA_TOKEN=$token $parent/libraries/manual-connections/get_region.sh)
    echo $output
    local perl_file=$parent_folder/ip_pattern.pl
    meta_services=$(perl $perl_file $output "Meta Services ")
    wire_guard=$(perl $perl_file $output "WireGuard     ")
    ovpn_tcp=$(perl $perl_file $output "OpenVPN TCP   ")
    ovpn_udp=$(perl $perl_file $output "OpenVPN UDP   ")
    host=$(perl $parent_folder/host.pl $output)
}