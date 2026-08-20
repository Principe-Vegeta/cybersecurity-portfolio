# Web Recon — Banner & Technology Fingerprinting

Hands-on web reconnaissance laboratory focused on identifying web server software, application technology, and framework version through HTTP responses and behavioral fingerprinting.

> **Learning context:** These exercises were performed in an authorized cybersecurity training laboratory using a VPN-provided target. The target information and results documented here are limited to the laboratory environment.

## Overview

This laboratory focused on web reconnaissance techniques used to identify information exposed by a web server.

The exercises progressed from basic banner identification to technology and version fingerprinting:

1. Web server identification
2. Web technology/framework identification
3. Framework version identification

### Lab Environment

* **Target:** `172.16.1.60`
* **Network access:** Authorized training laboratory via VPN
* **Techniques:** Banner Grabbing, HTTP Header Analysis, Technology Fingerprinting, Behavioral Fingerprinting
* **Tools:** Nmap, cURL

---

## VLAB 1 — Web Server Banner

### Objective

Identify the web server software and version running on the target.

**Lab ID:** `3ac410dc...[REDACTED]`

### Nmap Enumeration

Service and version detection was performed against the authorized laboratory target:

```bash
nmap -v -sSV -Pn -O 172.16.1.60
```

Relevant result:

```text
PORT     STATE SERVICE     VERSION
80/tcp   open  http        Microsoft IIS httpd 7.x
443/tcp  open  ssl/http    Microsoft IIS httpd 7.x
```

### HTTP Header Validation

The server response was then inspected with cURL:

```bash
curl -v http://172.16.1.60
```

Relevant response header:

```text
HTTP/1.1 200 OK
Server: Microsoft-IIS/7.x [REDACTED FOR ACADEMIC INTEGRITY]
X-Powered-By: ASP.NET
```

### Result

**Web Server:** `Microsoft-IIS/7.x` 

The `Server` HTTP response header exposed the web server software and version.

---

## VLAB 2 — Web Technology Fingerprinting

### Objective

Identify the web technology/framework used by the application.

**Lab ID:** `b163c928...[REDACTED]`

### HTTP Header Analysis

The HTTP response was inspected using cURL:

```bash
curl -v http://172.16.1.60
```

Relevant header:

```text
Server: Microsoft-IIS/7.x
X-Powered-By: ASP.NET
```

### Result

**Technology/Framework:** `ASP.NET`

The `X-Powered-By` response header exposed the technology used by the web application.

---

## VLAB 3 — Framework Version Fingerprinting

### Objective

Identify the version of the web application framework.

**Lab ID:** `9b785135...[REDACTED]`

### Behavioral Fingerprinting

A request was sent to an `.aspx` resource that did not exist:

```bash
curl -i http://172.16.1.60/teste.aspx
```

The response included:

```text
HTTP/1.1 404 Not Found
Server: Microsoft-IIS/7.5
X-AspNet-Version: 2.x.xxxxx  <-- [REDACTED FOR ACADEMIC INTEGRITY]
X-Powered-By: ASP.NET
```

### Analysis

The request to the `.aspx` extension caused the IIS server to process the request through the ASP.NET handler.

Although the requested resource did not exist and returned `404 Not Found`, the response exposed the following header:

```text
X-AspNet-Version: 2.x.xxxxx
```

This provided the framework version through behavioral fingerprinting.

### Result

**ASP.NET Version:** `2.0.50727`

---

## Key Findings

| VLAB | Technique                 | Finding             |
| ---- | ------------------------- | ------------------- |
| 01   | Banner Grabbing           | `Microsoft-IIS/7.x` |
| 02   | HTTP Header Analysis      | `ASP.NET`           |
| 03   | Behavioral Fingerprinting | `ASP.NET 2.x.xxxxx` |

## Skills Demonstrated

* Web reconnaissance
* Banner grabbing
* Nmap service/version detection
* HTTP response analysis
* HTTP header inspection
* Technology fingerprinting
* Behavioral fingerprinting
* cURL
* Basic web server identification
* Understanding of IIS and ASP.NET responses

## Security Perspective

Information exposed through HTTP response headers can assist reconnaissance by revealing details about the technologies and software versions used by a server.

From a defensive perspective, unnecessary technology and version disclosure should be evaluated because it can provide useful information to an attacker during the reconnaissance phase.

## Lessons Learned

This laboratory demonstrated that web reconnaissance is not limited to port scanning.

Information can be obtained through:

* Service banners
* HTTP response headers
* Application behavior
* Supported file extensions
* Error responses

Combining multiple observations can provide a more complete picture of the technologies running behind a web service.

## Authorization

All activities documented in this project were performed against an authorized cybersecurity training laboratory.

The techniques described here must only be used against systems that you own or have explicit permission to test.
