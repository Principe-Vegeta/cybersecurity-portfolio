#!/usr/bin/env bash

# HTML host extractor - authorized reconnaissance/lab use only
# Usage: ./html_enum.sh <URL>

set -u

if [[ -z "${1:-}" ]]; then
    echo "Usage: $0 <URL>"
    echo "Example: $0 http://127.0.0.1:8000/sample.html"
    exit 1
fi

url="$1"
tmp_file="$(mktemp)"
trap 'rm -f "$tmp_file"' EXIT

echo "[*] Downloading HTML from: $url"
wget -q "$url" -O - > "$tmp_file"

echo "[*] Hostnames found in HTML:"
grep -oE '([a-zA-Z0-9_-]+\.)+[a-zA-Z]{2,}' "$tmp_file" | sort -u
