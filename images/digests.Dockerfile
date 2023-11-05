# Debian
FROM docker.io/library/debian:12.2-slim@sha256:6cc67f78e0e8295b4fbe055eba0356648f149daf15db9179aa51fcfa9cc131cd as debian12-amd64

FROM docker.io/library/debian:12.2-slim@sha256:6cc67f78e0e8295b4fbe055eba0356648f149daf15db9179aa51fcfa9cc131cd as debian12-arm64

# Python
FROM docker.io/library/python:3.12.0-slim-bookworm@sha256:80571b64ab7b94950d49d413f074e1932b65f6f75e0c34747b40ea41889a2ca9 as python3.12-amd64

FROM docker.io/library/python:3.12.0-slim-bookworm@sha256:80571b64ab7b94950d49d413f074e1932b65f6f75e0c34747b40ea41889a2ca9 as python3.12-arm64

FROM docker.io/library/python:3.11.6-slim-bookworm@sha256:f89d4d260b6a5caa6aa8e0e14b162deb76862890c91779c31f762b22e72a6cef as python3.11-amd64

FROM docker.io/library/python:3.11.6-slim-bookworm@sha256:f89d4d260b6a5caa6aa8e0e14b162deb76862890c91779c31f762b22e72a6cef as python3.11-arm64
