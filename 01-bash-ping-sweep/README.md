# Bash Ping Sweep

A small Bash utility for discovering hosts that respond to ICMP echo requests in an authorized lab network.

## What I practiced

- Bash variables and positional arguments
- `for` loops
- Exit status checking with `$?`
- Redirecting output to `/dev/null`
- Basic input validation
- ICMP host discovery

## Usage

```bash
chmod +x ping_sweep.sh
./ping_sweep.sh 192.168.56
```

Use an address range belonging to your own lab or an environment where you have explicit authorization.

## Example output

```text
Host active: 192.168.56.1
Host active: 192.168.56.10
```

## Learning outcome

This exercise connected Bash scripting fundamentals with a practical network-discovery task. The original study notes evolved from simple `ping` commands into a parameterized script that loops through a `/24`-style host range and reports only successful responses.
