# HTML Subdomain Enumerator

A Bash script that extracts hostname-like values from HTML and demonstrates how command-line text processing can support web reconnaissance in an authorized environment.

## What I practiced

- HTTP retrieval with `wget`
- HTML/text extraction
- Regular expressions with `grep -oE`
- Sorting and deduplication with `sort -u`
- Temporary files and cleanup with `trap`
- Bash argument handling

## Safe local lab

The repository includes `sample.html`, so the exercise can be demonstrated without contacting a real website.

Start a local web server from this directory:

```bash
python3 -m http.server 8000
```

In another terminal:

```bash
chmod +x html_enum.sh
./html_enum.sh http://127.0.0.1:8000/sample.html
```

Expected output includes:

```text
example.test
intranet.example.test
portal.example.test
```

## Learning outcome

The training notes originally explored `wget`, `grep`, `cut`, loops, and DNS resolution to automate hostname discovery. This portfolio version keeps the core learning objective while using a local fixture for safe, reproducible demonstrations.
