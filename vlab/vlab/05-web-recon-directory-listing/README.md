# Web Recon — Directory Listing & Application Exposure

## Overview

This laboratory focused on identifying exposed directories, files, source-code references, and application resources.

## Objective

Understand how application structure and development artifacts can become visible through web reconnaissance.

## Methodology

1. Define the authorized scope.
2. Perform web resource discovery.
3. Identify directories and files of interest.
4. Inspect accessible resources.
5. Review source-code references where appropriate.
6. Assess potential information exposure.
7. Document defensive recommendations.

## Tools

- Gobuster
- cURL
- HTTP
- Source-code inspection

## Key Concepts

- Directory listing
- Web enumeration
- Application structure
- Source-code inspection
- Information exposure

## Lessons Learned

Directory listings and exposed files can reveal useful information about application structure.

Source-code inspection can reveal routes and references that are not immediately visible in the rendered application.

A finding should always be validated before determining its actual security impact.

## Defensive Perspective

Organizations should:

- Disable unnecessary directory listing.
- Remove development artifacts from production.
- Restrict sensitive files.
- Review source code before deployment.
- Protect administrative and internal resources.
- Monitor web-server logs for unusual enumeration patterns.

## Ethical Use

This laboratory was performed in an authorized training environment.

Laboratory-specific targets, credentials, keys, flags, and sensitive information are intentionally omitted.
