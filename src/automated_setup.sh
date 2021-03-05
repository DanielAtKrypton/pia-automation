#!/bin/bash
local parent=$(dirname ${BASH_SOURCE[0]})
# echo $parent
sudo VPN_PROTOCOL=$VPN_PROTOCOL DISABLE_IPV6=$DISABLE_IPV6 AUTOCONNECT=$AUTOCONNECT PIA_PF=$PIA_PF PIA_DNS=$PIA_DNS PIA_USER=$PIA_USER PIA_PASS=$PIA_PASS $parent/../libraries/manual-connections/run_setup.sh