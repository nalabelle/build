# Debian
FROM docker.io/library/debian:12.2-slim@sha256:6cc67f78e0e8295b4fbe055eba0356648f149daf15db9179aa51fcfa9cc131cd as debian12-amd64

FROM docker.io/library/debian:12.2-slim@sha256:6cc67f78e0e8295b4fbe055eba0356648f149daf15db9179aa51fcfa9cc131cd as debian12-arm64

# Python
FROM docker.io/library/python:3.12.0-slim-bookworm@sha256:80571b64ab7b94950d49d413f074e1932b65f6f75e0c34747b40ea41889a2ca9 as python3.12-amd64

FROM docker.io/library/python:3.12.0-slim-bookworm@sha256:80571b64ab7b94950d49d413f074e1932b65f6f75e0c34747b40ea41889a2ca9 as python3.12-arm64

FROM docker.io/library/python:3.11.6-slim-bookworm@sha256:52cf1e24d0baa095fd8137e69a13042442d40590f03930388df49fe4ecb8ebdb as python3.11-amd64

FROM docker.io/library/python:3.11.6-slim-bookworm@sha256:25e6046c4bb498c74d00b284580294e3de06c67dc80371418cd95d8140ead9bd as python3.11-arm64
