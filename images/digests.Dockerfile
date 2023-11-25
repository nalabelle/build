# Debian
FROM docker.io/library/debian:12.2-slim@sha256:2bc5c236e9b262645a323e9088dfa3bb1ecb16cc75811daf40a23a824d665be9 AS debian12

# Python
FROM docker.io/library/python:3.12.0-slim-bookworm@sha256:80571b64ab7b94950d49d413f074e1932b65f6f75e0c34747b40ea41889a2ca9 AS python3.12

FROM docker.io/library/python:3.11.6-slim-bookworm@sha256:1bc6a3e9356d64ea632791653bc71a56340e8741dab66434ab2739ebf6aed29d AS python3.11
