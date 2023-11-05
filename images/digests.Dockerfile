# Debian
FROM docker.io/library/debian:12.2-slim@sha256:6cc67f78e0e8295b4fbe055eba0356648f149daf15db9179aa51fcfa9cc131cd as debian12-amd64

FROM docker.io/library/debian:12.2-slim@sha256:6cc67f78e0e8295b4fbe055eba0356648f149daf15db9179aa51fcfa9cc131cd as debian12-arm64

# Python
FROM docker.io/library/python:3.12.0-slim-bookworm@sha256:d0c9bf03d80a3c00963f1b973760094c0b2070638fa64dd4f67d2247c0110efc as python3.12-amd64

FROM docker.io/library/python:3.12.0-slim-bookworm@sha256:4e9bf0e7af6ef5b49664864eee63b93d6af541a59cb15b91df69bff768622ff1 as python3.12-arm64

FROM docker.io/library/python:3.11.6-slim-bookworm@sha256:f89d4d260b6a5caa6aa8e0e14b162deb76862890c91779c31f762b22e72a6cef as python3.11-amd64

FROM docker.io/library/python:3.11.6-slim-bookworm@sha256:f89d4d260b6a5caa6aa8e0e14b162deb76862890c91779c31f762b22e72a6cef as python3.11-arm64
