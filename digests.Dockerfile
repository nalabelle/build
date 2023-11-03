# Debian
FROM docker.io/library/debian:12.2-slim@sha256:ea5ad531efe1ac11ff69395d032909baf423b8b88e9aade07e11b40b2e5a1338 as debian12-amd64

FROM docker.io/library/debian:12.2-slim@sha256:9ccb91746bf0b2e3e82b2dd37069ef9b358cb7d813217ea3fa430b940fc5dac3 as debian12-arm64

# Helmfile
FROM ghcr.io/helmfile/helmfile:v0.158.1@sha256:9b11a9a89b5b2bee88ac10ab0dfb5f369ff4543b89b1047d19b766a1ae9127e3 as helmfile-amd64

FROM ghcr.io/helmfile/helmfile:v0.158.1@sha256:1a3b10bb33f6f048b51e9cf8710bcabe025891c44f00008343e150d29897e50f as helmfile-arm64
