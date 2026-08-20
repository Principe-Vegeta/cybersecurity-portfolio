# Cybersecurity Portfolio

Hands-on cybersecurity learning portfolio focused on Linux, networking, Bash, Python, web reconnaissance, security tooling, and network traffic analysis.

> **Learning context:** The projects in this repository are based on hands-on study and lab exercises from my cybersecurity training. All security testing is intended for systems I own or environments where I have explicit authorization.

## Projects

| Project | Focus | Skills |
|---|---|---|
| [01 - Bash Ping Sweep](./01-bash-ping-sweep/) | Host discovery | Bash, ICMP, loops, input validation |
| [02 - Bash Port Scanner](./02-bash-port-scanner/) | TCP port discovery | Bash, hping3, TCP SYN, output filtering |
| [03 - HTML Subdomain Enumerator](./03-html-subdomain-enumerator/) | Web enumeration | Bash, wget, grep, regex, DNS |
| [04 - Python Port Scanner](./04-python-port-scanner/) | Socket-based scanning | Python, sockets, TCP, arguments |
| [05 - Wireshark Port Knocking Lab](./05-wireshark-port-knocking/) | Traffic analysis | Wireshark, TCP SYN, packet analysis |
| [06 - Web Recon Banner Fingerprinting](./06-web-recon-banner-fingerprinting) | Web reconnaissance and technology fingerprinting | Nmap, cURL, HTTP, IIS, ASP.NET, banner grabbing |

## Security Labs

Hands-on laboratory exercises developed during my cybersecurity training.

| Lab | Focus | Skills |
|---|---|---|
| [01 - Web Recon: Sitemap & Source Inspection](./vlab/01-web-recon-sitemap/) | Web reconnaissance | cURL, HTTP, source inspection |
| [02 - Web Recon: Directory & File Enumeration](./vlab/02-web-recon-directory-enumeration/) | Resource enumeration | Gobuster, cURL, HTTP |
| [03 - Web Recon: User Directories & User-Agent Handling](./vlab/03-web-recon-userdir-user-agent/) | Web enumeration | Gobuster, cURL, HTTP headers |
| [04 - Information Gathering: Web Information Leakage](./vlab/04-information-gathering-web/) | Information exposure | cURL, grep, regex |
| [05 - Web Recon: Directory Listing & Application Exposure](./vlab/05-web-recon-directory-listing/) | Web reconnaissance | Gobuster, cURL, HTTP |
| [06 - Information Gathering: Web Banner & Technology Fingerprinting](./vlab/06-web-recon-banner-fingerprinting) | Web reconnaissance | Nmap, cURL, HTTP headers, IIS, ASP.NET |

### Web Recon Methodology

The labs follow a practical workflow:

**Reconnaissance → Enumeration → Validation → Analysis → Documentation → Defensive recommendations**

See the [Web Recon Methodology](./vlab/docs/web-recon-methodology.md) for the approach I am practicing.

## Core Skills Demonstrated

- Linux command line and system administration fundamentals
- Bash scripting and automation
- TCP/IP and network troubleshooting fundamentals
- Host and port discovery in authorized lab environments
- DNS and basic web enumeration
- Python networking with sockets
- Wireshark packet analysis
- Technical documentation and reproducible lab notes
- Web reconnaissance and technology fingerprinting
- HTTP response and header analysis
- Directory and file enumeration
= Source-code and web resource inspection
- Information gathering and information exposure analysis
- Security-focused command-line text processing

## Learning Roadmap

See [`docs/learning-map.md`](./docs/learning-map.md) for the skills represented in this portfolio and the next areas I plan to develop.

## Safety and Scope

The scripts are designed for learning and authorized testing. Do not scan, enumerate, or interact with systems you do not own or have explicit permission to test.

This repository intentionally avoids real credentials, private IP information from personal environments, flags, or sensitive lab data.

## About

I am building practical cybersecurity skills through structured study and hands-on laboratory exercises, with an emphasis on understanding how network and security tools work rather than only memorizing commands.
