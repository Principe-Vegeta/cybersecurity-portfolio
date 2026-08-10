# Python TCP Port Scanner

A small Python networking exercise using the standard `socket` library to test TCP connectivity to a specified port.

## What I practiced

- Python 3 fundamentals
- Command-line arguments with `argparse`
- TCP sockets
- Connection timeouts
- Return values from `connect_ex()`
- Basic input validation

## Usage

```bash
python3 port_scanner.py 127.0.0.1 8000
```

Example:

```text
OPEN  127.0.0.1:8000
```

Only test hosts and ports you own or are explicitly authorized to assess.

## Learning outcome

The training material introduced sockets, arguments, port scanning, banner grabbing, and service interaction. This project isolates the port-scanning concept into a small, readable Python program that can be extended later with port ranges, service identification, and structured output.
