# Helmfile
FROM ghcr.io/helmfile/helmfile:v0.158.1@sha256:9b11a9a89b5b2bee88ac10ab0dfb5f369ff4543b89b1047d19b766a1ae9127e3 as helmfile-amd64

FROM ghcr.io/helmfile/helmfile:v0.158.1@sha256:1a3b10bb33f6f048b51e9cf8710bcabe025891c44f00008343e150d29897e50f as helmfile-arm64
