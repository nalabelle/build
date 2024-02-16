# Debian
FROM docker.io/library/debian:12.2-slim@sha256:2bc5c236e9b262645a323e9088dfa3bb1ecb16cc75811daf40a23a824d665be9 AS debian12

# Python
FROM docker.io/library/python:3.12.2-slim-bookworm@sha256:5c73034c2bc151596ee0f1335610735162ee2b148816710706afec4757ad5b1e AS python3.12

FROM docker.io/library/python:3.11.8-slim-bookworm@sha256:ce81dc539f0aedc9114cae640f8352fad83d37461c24a3615b01f081d0c0583a AS python3.11
