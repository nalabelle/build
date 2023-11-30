# Debian
FROM docker.io/library/debian:12.2-slim@sha256:2bc5c236e9b262645a323e9088dfa3bb1ecb16cc75811daf40a23a824d665be9 AS debian12

# Python
FROM docker.io/library/python:3.12.0-slim-bookworm@sha256:32477c7ecb3b18a47cff8eb5b8149bc21c858998b0ae2bb36f4ddb43cc79d240 AS python3.12

FROM docker.io/library/python:3.12.0-slim-bookworm@sha256:eb6d3208444a54418be98f83f1006f6d78ef17144f1cd9eb4e5945d4851af355 AS python3.11
