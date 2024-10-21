# Debian
FROM docker.io/library/debian:12.7-slim@sha256:36e591f228bb9b99348f584e83f16e012c33ba5cad44ef5981a1d7c0a93eca22 AS debian12

# Python
FROM docker.io/library/python:3.13.0-slim-bookworm@sha256:751d8bece269ba9e672b3f2226050e7e6fb3f3da3408b5dcb5d415a054fcb061 AS python3.12

FROM docker.io/library/python:3.13.0-slim-bookworm@sha256:751d8bece269ba9e672b3f2226050e7e6fb3f3da3408b5dcb5d415a054fcb061 AS python3.11
