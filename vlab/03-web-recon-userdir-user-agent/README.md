# Web Recon — User Directories & User-Agent Handling

## Overview

This laboratory explored web reconnaissance involving user-directory paths and HTTP User-Agent handling.

## Objective

Understand how web servers can expose user-related paths and how HTTP request headers can influence application responses.

## Methodology

1. Identify the authorized target.
2. Enumerate relevant web paths.
3. Inspect discovered user-directory structures.
4. Analyze HTTP responses.
5. Test requests using different User-Agent values within the authorized laboratory.
6. Document observations.

## Tools

- Gobuster
- cURL
- HTTP headers

## Key Concepts

- Web enumeration
- User directories
- HTTP headers
- User-Agent
- Request analysis

## Lessons Learned

Web servers can expose user-directory structures that deserve security review.

HTTP headers can influence how servers process requests and how applications respond.

Changing a User-Agent should be understood as a request-analysis technique rather than treated as a universal security-control bypass.

## Defensive Perspective

Organizations should:

- Review exposed user-directory paths.
- Apply appropriate access controls.
- Monitor unusual HTTP request patterns.
- Avoid relying solely on User-Agent filtering as a security control.
- Properly configure web-server access restrictions.

## Ethical Use

This laboratory was performed in an authorized training environment.

Laboratory-specific targets, credentials, keys, flags, and sensitive information are intentionally omitted.
