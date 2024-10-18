# Debian
FROM docker.io/library/debian:12.7-slim@sha256:36e591f228bb9b99348f584e83f16e012c33ba5cad44ef5981a1d7c0a93eca22 AS debian12

# Python
FROM docker.io/library/python:3.13.0-slim-bookworm@sha256:02699283cc784486281bb4bdf233b8cf443f038d9b9c91873d31bd4cbd622a3d AS python3.12

FROM docker.io/library/python:3.13.0-slim-bookworm@sha256:02699283cc784486281bb4bdf233b8cf443f038d9b9c91873d31bd4cbd622a3d AS python3.11
