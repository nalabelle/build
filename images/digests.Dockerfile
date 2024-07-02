# Debian
FROM docker.io/library/debian:12.2-slim@sha256:2bc5c236e9b262645a323e9088dfa3bb1ecb16cc75811daf40a23a824d665be9 AS debian12

# Python
FROM docker.io/library/python:3.12.4-slim-bookworm@sha256:44fa7d815050f3dc43b1d5d50c3f4d19870a83c96301c9653e8cf908ccd7892b AS python3.12

FROM docker.io/library/python:3.11.9-slim-bookworm@sha256:dad770592ab3582ab2dabcf0e18a863df9d86bd9d23efcfa614110ce49ac20e4 AS python3.11
