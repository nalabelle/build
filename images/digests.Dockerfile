# Debian
FROM docker.io/library/debian:12.2-slim@sha256:2bc5c236e9b262645a323e9088dfa3bb1ecb16cc75811daf40a23a824d665be9 AS debian12

# Python
FROM docker.io/library/python:3.12.1-slim-bookworm@sha256:db7e9284d53f7b827c58a6239b9d2907c33250215823b1cdb7d1e983e70dafa5 AS python3.12

FROM docker.io/library/python:3.11.7-slim-bookworm@sha256:d11b9bd5e49ea7401753d78f4d3b56f3aec952b85b49bcae88981f0452818e0b AS python3.11
