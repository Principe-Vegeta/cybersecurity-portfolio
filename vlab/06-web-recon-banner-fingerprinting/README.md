Web Recon — Banner & Technology Fingerprinting
Hands-on web reconnaissance laboratory focused on identifying web server software, application technology, and framework version through HTTP responses and behavioral fingerprinting.

Learning context: These exercises were performed in an authorized cybersecurity training laboratory using a VPN-provided target. The target information, lab IDs, and exact flag versions documented here are redacted to maintain academic integrity and prevent direct solutions from being copied by other students.

Overview
This laboratory focused on web reconnaissance techniques used to identify information exposed by a web server.
The exercises progressed from basic banner identification to technology and version fingerprinting:

Web server identification

Web technology/framework identification

Framework version identification

Lab Environment
Target: 172.16.1.60

Network access: Authorized training laboratory via VPN

Techniques: Banner Grabbing, HTTP Header Analysis, Technology Fingerprinting, Behavioral Fingerprinting

Tools: Nmap, cURL

VLAB 1 — Web Server Banner
Objective
Identify the web server software and version running on the target.

Lab ID: 3ac410dc...[REDACTED]

Nmap Enumeration
Service and version detection was performed against the authorized laboratory target:

Bash
nmap -v -sSV -Pn -O 172.16.1.60
Relevant result:

Plaintext
PORT     STATE SERVICE     VERSION
80/tcp   open  http        Microsoft IIS httpd 7.x
443/tcp  open  ssl/http    Microsoft IIS httpd 7.x
HTTP Header Validation
The server response was then inspected with cURL:

Bash
curl -v http://172.16.1.60
Relevant response header:

HTTP
HTTP/1.1 200 OK
Server: Microsoft-IIS/7.x  <-- [REDACTED FOR ACADEMIC INTEGRITY]
X-Powered-By: ASP.NET
Result
Web Server: Microsoft-IIS/7.x

O cabeçalho HTTP Server expôs o software do servidor web e sua versão.

VLAB 2 — Web Technology Fingerprinting
Objective
Identify the web technology/framework used by the application.

Lab ID: b163c928...[REDACTED]

HTTP Header Analysis
The HTTP response was inspected using cURL:

Bash
curl -v http://172.16.1.60
Relevant header:

HTTP
Server: Microsoft-IIS/7.x
X-Powered-By: ASP.NET
Result
Technology/Framework: ASP.NET

O cabeçalho de resposta X-Powered-By revelou a tecnologia utilizada pela aplicação web.

VLAB 3 — Framework Version Fingerprinting
Objective
Identify the version of the web application framework.

Lab ID: 9b785135...[REDACTED]

Behavioral Fingerprinting
A request was sent to an .aspx resource that did not exist to trigger the ASP.NET runtime handler:

Bash
curl -i http://172.16.1.60/teste.aspx
The response included:

HTTP
HTTP/1.1 404 Not Found
Server: Microsoft-IIS/7.x
X-AspNet-Version: 2.x.xxxxx  <-- [REDACTED FOR ACADEMIC INTEGRITY]
X-Powered-By: ASP.NET
Analysis
The request to the .aspx extension caused the IIS server to process the request through the ASP.NET handler.
Although the requested resource did not exist and returned 404 Not Found, the response exposed the X-AspNet-Version header, providing the framework version through behavioral fingerprinting.

Result
ASP.NET Version: 2.x.xxxxx

Key Findings
VLAB	Technique	Finding / Output
01	Banner Grabbing	Microsoft-IIS/7.x
02	HTTP Header Analysis	ASP.NET
03	Behavioral Fingerprinting	ASP.NET 2.x.xxxxx
Skills Demonstrated
Web reconnaissance

Banner grabbing

Nmap service/version detection

HTTP response analysis

HTTP header inspection

Technology fingerprinting

Behavioral fingerprinting

cURL

Basic web server identification

Understanding of IIS and ASP.NET responses

Security Perspective
Information exposed through HTTP response headers can assist reconnaissance by revealing details about the technologies and software versions used by a server.

From a defensive perspective, unnecessary technology and version disclosure should be evaluated because it can provide useful information to an attacker during the reconnaissance phase.

Lessons Learned
This laboratory demonstrated that web reconnaissance is not limited to port scanning.
Information can be obtained through:

Service banners

HTTP response headers

Application behavior

Supported file extensions

Error responses

Combining multiple observations can provide a more complete picture of the technologies running behind a web service.

Authorization
All activities documented in this project were performed against an authorized cybersecurity training laboratory.
The techniques described here must only be used against systems that you own or have explicit permission to test.
