# Debian
FROM docker.io/library/debian:12.7-slim@sha256:36e591f228bb9b99348f584e83f16e012c33ba5cad44ef5981a1d7c0a93eca22 AS debian12

# Python
FROM docker.io/library/python:3.13.0-slim-bookworm@sha256:228ed0e282df9da7f8b93d649b6380803a22cca4db0641a82544a1fc22cc47a2 AS python3.12

FROM docker.io/library/python:3.13.0-slim-bookworm@sha256:228ed0e282df9da7f8b93d649b6380803a22cca4db0641a82544a1fc22cc47a2 AS python3.11
