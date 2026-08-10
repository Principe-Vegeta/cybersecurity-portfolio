#!/usr/bin/env python3

"""Simple TCP port scanner for authorized lab environments."""

import argparse
import socket


def scan_port(host: str, port: int, timeout: float) -> bool:
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as sock:
        sock.settimeout(timeout)
        return sock.connect_ex((host, port)) == 0


def main() -> None:
    parser = argparse.ArgumentParser(description="Simple TCP port scanner")
    parser.add_argument("host", help="Authorized lab host or IP address")
    parser.add_argument("port", type=int, help="TCP port to test")
    parser.add_argument("--timeout", type=float, default=1.0)
    args = parser.parse_args()

    if not 1 <= args.port <= 65535:
        parser.error("port must be between 1 and 65535")

    if scan_port(args.host, args.port, args.timeout):
        print(f"OPEN  {args.host}:{args.port}")
    else:
        print(f"CLOSED/FILTERED  {args.host}:{args.port}")


if __name__ == "__main__":
    main()
