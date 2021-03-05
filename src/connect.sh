#!/bin/bash
local parent=$(dirname ${BASH_SOURCE[0]})

. $parent/helpers/get_my_region.sh
get_my_region
# echo PF_GATEWAY=$ovpn_tcp PF_HOSTNAME=$host PIA_TOKEN=$token
# meta_services
# wire_guard
# ovpn_tcp
# ovpn_udp
# PF_GATEWAY=$meta_services PF_HOSTNAME=$host PIA_TOKEN=$token $parent_folder/libraries/manual-connections/port_forwarding.sh

sudo OVPN_SERVER_IP=$ovpn_tcp OVPN_HOSTNAME=$host PIA_TOKEN=$token CONNECTION_SETTINGS=$VPN_PROTOCOL $parent/../libraries/manual-connections/connect_to_openvpn_with_token.sh