# Web Recon — Directory & File Enumeration

## Overview

This laboratory focused on discovering web directories and files and analyzing HTTP response codes.

## Objective

Practice web resource enumeration and learn how different HTTP responses can help identify interesting application resources.

## Methodology

1. Define the authorized scope.
2. Select an appropriate wordlist.
3. Perform directory and file enumeration.
4. Record interesting HTTP status codes.
5. Manually validate relevant findings.
6. Assess the potential security impact.
7. Document defensive recommendations.

## Tools

- Gobuster
- cURL
- HTTP

## Key Concepts

- Directory enumeration
- File discovery
- HTTP status codes
- Resource validation
- Information exposure

## HTTP Response Analysis

During enumeration, different responses provide different information:

- `200 OK` — resource successfully returned.
- `301 Moved Permanently` — resource redirects to another location.
- `401 Unauthorized` — authentication is required.
- `403 Forbidden` — access is forbidden.

A status code alone does not prove that a security vulnerability exists. Findings must be manually validated and assessed in context.

## Lessons Learned

Enumeration can reveal application resources that are not obvious from normal navigation.

The combination of automated discovery and manual validation is more useful than relying on enumeration output alone.

## Defensive Perspective

Organizations should:

- Remove unnecessary files and directories from production.
- Restrict sensitive resources with proper authorization.
- Disable unnecessary directory listing.
- Monitor unusual enumeration activity.
- Review exposed development and diagnostic resources.

## Ethical Use

This laboratory was performed in an authorized training environment.

Laboratory-specific targets, credentials, keys, flags, and sensitive information are intentionally omitted.
