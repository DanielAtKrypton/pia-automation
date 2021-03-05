# PIA Automation

## Requirements

- Direnv
- .envrc file

## Installation

```sh
git clone git@github.com:DanielAtKrypton/pia-automation.git
git submodule init
```

### .envrc file example

```sh
export PIA_USER=p12345678
export PIA_PASS=abCDEFGHIJ
export PIA_PF=true
export AUTOCONNECT=true
export VPN_PROTOCOL=openvpn_tcp_standard
export DISABLE_IPV6="no"
export PIA_DNS=false
```

## Test

Run all files within tests folder as follows:

```sh
cd tests
./connect_test.sh
./get_my_region_test.sh
./get_my_tokne_test.sh
./get_signature_test.sh
```