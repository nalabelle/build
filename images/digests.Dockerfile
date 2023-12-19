# Debian
FROM docker.io/library/debian:12.2-slim@sha256:2bc5c236e9b262645a323e9088dfa3bb1ecb16cc75811daf40a23a824d665be9 AS debian12

# Python
FROM docker.io/library/python:3.12.1-slim-bookworm@sha256:c805c5edcf6005fd72f933156f504525e1da263ffbc3fae6b4940e6c360c216f AS python3.12

FROM docker.io/library/python:3.11.7-slim-bookworm@sha256:8f64a67710f3d981cf3008d6f9f1dbe61accd7927f165f4e37ea3f8b883ccc3f AS python3.11
