# Debian
FROM docker.io/library/debian:12.4-slim@sha256:f80c45482c8d147da87613cb6878a7238b8642bcc24fc11bad78c7bec726f340 AS debian12

# Python
FROM docker.io/library/python:3.12.0-slim-bookworm@sha256:32477c7ecb3b18a47cff8eb5b8149bc21c858998b0ae2bb36f4ddb43cc79d240 AS python3.12

FROM docker.io/library/python:3.12.1-slim-bookworm@sha256:c805c5edcf6005fd72f933156f504525e1da263ffbc3fae6b4940e6c360c216f AS python3.11
