# Bash TCP Port Scanner

A Bash-based lab exercise that checks one TCP port across a `/24`-style network range using `hping3` and TCP SYN responses.

## What I practiced

- TCP three-way handshake concepts
- TCP SYN probing
- Reading TCP flags
- Bash loops and positional arguments
- Filtering command output with `grep`
- Suppressing error output with `/dev/null`

In the training exercise, a SYN/ACK response (`SA`) was used as the indicator for an accessible TCP service on the tested port.

## Requirements

- Linux
- Bash
- `hping3`
- Root privileges may be required for raw packet operations

## Usage

```bash
chmod +x port_scanner.sh
sudo ./port_scanner.sh 192.168.56 80
```

Only use this against your own lab network or a target for which you have explicit authorization.

## Example output

```text
Open: 192.168.56.10:80
Open: 192.168.56.20:80
```

## Learning outcome

This project moved from basic Bash loops into network-level reasoning: sending a TCP SYN, interpreting the response flags, and filtering the result into a useful discovery output.
