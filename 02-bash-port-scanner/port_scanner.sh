#!/usr/bin/env bash

# TCP port scanner using hping3 - authorized lab use only
# Usage: sudo ./port_scanner.sh 192.168.56 80

set -u

if [[ -z "${1:-}" || -z "${2:-}" ]]; then
    echo "Usage: sudo $0 <network-prefix> <port>"
    echo "Example: sudo $0 192.168.56 80"
    exit 1
fi

network="$1"
port="$2"

for host in {1..254}; do
    ip="${network}.${host}"

    if hping3 -S -p "$port" -c 1 "$ip" 2>/dev/null | grep -q 'flags=SA'; then
        echo "Open: ${ip}:${port}"
    fi
done
