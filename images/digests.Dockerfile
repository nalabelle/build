# Debian
FROM docker.io/library/debian:12.2-slim@sha256:2bc5c236e9b262645a323e9088dfa3bb1ecb16cc75811daf40a23a824d665be9 AS debian12

# Python
FROM docker.io/library/python:3.12.7-slim-bookworm@sha256:e38062874c7a45323cdd9a4c5241d18821c320a6c761f20a4640523ebf42b03e AS python3.12

FROM docker.io/library/python:3.11.10-slim-bookworm@sha256:a9476aa83bc40fce9b019b8e5b6ff3f855ae5bdd2460f60173ae405cfa820167 AS python3.11
