# Debian
FROM docker.io/library/debian:12.4-slim@sha256:f4a83aa865a2b4a064ff142aa91c713180df9fcb86ce676b5de2981029379c37 AS debian12

# Python
FROM docker.io/library/python:3.12.0-slim-bookworm@sha256:32477c7ecb3b18a47cff8eb5b8149bc21c858998b0ae2bb36f4ddb43cc79d240 AS python3.12

FROM docker.io/library/python:3.12.1-slim-bookworm@sha256:db7e9284d53f7b827c58a6239b9d2907c33250215823b1cdb7d1e983e70dafa5 AS python3.11
