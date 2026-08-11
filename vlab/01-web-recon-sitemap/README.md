# Web Recon — Sitemap & Source Inspection

## Overview

This laboratory focused on web reconnaissance using sitemap discovery, HTTP requests, and source-code inspection.

## Objective

Practice identifying application resources that may be exposed through standard web mechanisms and validating those resources manually.

## Methodology

1. Identify the authorized target scope.
2. Inspect standard web resources.
3. Review sitemap information.
4. Identify interesting application routes.
5. Validate discovered resources using HTTP requests.
6. Inspect source information for additional context.
7. Document the security implications.

## Tools

- cURL
- HTTP
- Browser/source-code inspection

## Key Concepts

- Web reconnaissance
- Sitemap discovery
- HTTP requests
- Source-code inspection
- Information exposure

## Lessons Learned

A sitemap can reveal application routes that may not be immediately visible through normal navigation.

Source-code inspection can also reveal useful information about how an application is structured.

The important lesson is that reconnaissance should be followed by manual validation rather than assuming that every discovered resource represents a vulnerability.

## Defensive Perspective

Organizations should:

- Review what information is exposed through public sitemaps.
- Avoid exposing unnecessary internal routes.
- Review source-code comments before deployment.
- Remove development and testing artifacts from production.
- Restrict sensitive resources through appropriate authentication and authorization.

## Ethical Use

This laboratory was performed in an authorized training environment.

Laboratory-specific targets, credentials, keys, flags, and sensitive information are intentionally omitted from this public portfolio.
