#!/usr/bin/env bash

# Ping Sweep - authorized lab use only
# Usage: ./ping_sweep.sh 192.168.56

set -u

if [[ -z "${1:-}" ]]; then
    echo "Usage: $0 <network-prefix>"
    echo "Example: $0 192.168.56"
    exit 1
fi

network="$1"

for host in {1..254}; do
    ip="${network}.${host}"

    if ping -c 1 -W 1 "$ip" > /dev/null 2>&1; then
        echo "Host active: $ip"
    fi
done
