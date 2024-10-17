# Debian
FROM docker.io/library/debian:12.2-slim@sha256:2bc5c236e9b262645a323e9088dfa3bb1ecb16cc75811daf40a23a824d665be9 AS debian12

# Python
FROM docker.io/library/python:3.12.7-slim-bookworm@sha256:090031bf55f0ce1cd785a56ac87c832abec5c8299f041b7d7e83e3f9dbd2fa28 AS python3.12

FROM docker.io/library/python:3.11.10-slim-bookworm@sha256:fe1c43387980f4dcc5f533a326d6a926b588c1f0663896d1092d3fa976257f75 AS python3.11
