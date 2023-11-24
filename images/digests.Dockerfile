# Debian
FROM docker.io/library/debian:12.2-slim@sha256:2bc5c236e9b262645a323e9088dfa3bb1ecb16cc75811daf40a23a824d665be9 AS debian12-amd64

FROM docker.io/library/debian:12.2-slim@sha256:2bc5c236e9b262645a323e9088dfa3bb1ecb16cc75811daf40a23a824d665be9 AS debian12-arm64

# Python
FROM docker.io/library/python:3.12.0-slim-bookworm@sha256:80571b64ab7b94950d49d413f074e1932b65f6f75e0c34747b40ea41889a2ca9 AS python3.12-amd64

FROM docker.io/library/python:3.12.0-slim-bookworm@sha256:80571b64ab7b94950d49d413f074e1932b65f6f75e0c34747b40ea41889a2ca9 AS python3.12-arm64

FROM docker.io/library/python:3.11.6-slim-bookworm@sha256:f89d4d260b6a5caa6aa8e0e14b162deb76862890c91779c31f762b22e72a6cef AS python3.11-amd64

FROM docker.io/library/python:3.11.6-slim-bookworm@sha256:f89d4d260b6a5caa6aa8e0e14b162deb76862890c91779c31f762b22e72a6cef AS python3.11-arm64
