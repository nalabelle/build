# Debian
FROM docker.io/library/debian:12.2-slim@sha256:2bc5c236e9b262645a323e9088dfa3bb1ecb16cc75811daf40a23a824d665be9 AS debian12

# Python
FROM docker.io/library/python:3.12.0-slim-bookworm@sha256:19a6235339a74eca01227b03629f63b6f5020abc21142436eced6ec3a9839a76 AS python3.12

FROM docker.io/library/python:3.11.6-slim-bookworm@sha256:1bc6a3e9356d64ea632791653bc71a56340e8741dab66434ab2739ebf6aed29d AS python3.11
