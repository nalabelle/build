VERSION --pass-args 0.7
ARG --global REGISTRY="ghcr.io"
ARG --global EARTHLY_GIT_BRANCH
ARG --global EARTHLY_GIT_COMMIT_TIMESTAMP
ARG --global EARTHLY_GIT_PROJECT_NAME
ARG --global EARTHLY_TARGET_TAG
ARG --global TARGETARCH
FROM DOCKERFILE --target debian12-${TARGETARCH} -f digests.Dockerfile .

build-all-platforms:
  BUILD --platform=linux/amd64 --platform=linux/arm64 +build

build:
  BUILD +debian12
  BUILD +helm

helmfile:
  FROM DOCKERFILE --target helmfile-${TARGETARCH} -f digests.Dockerfile .

SAVE_IMAGE:
  COMMAND
  ARG EARTHLY_TARGET_NAME
  ARG IMAGE=${REGISTRY}/${EARTHLY_GIT_PROJECT_NAME}/${EARTHLY_TARGET_NAME}
  IF [ "${EARTHLY_TARGET_TAG}" = "main" ]
    SAVE IMAGE --push ${IMAGE}:latest
    SAVE IMAGE --push ${IMAGE}:0.1.${EARTHLY_GIT_COMMIT_TIMESTAMP}
  END


debian12:
  FROM DOCKERFILE --target debian12-${TARGETARCH} -f digests.Dockerfile .

  ARG DEBIAN_FRONTEND=noninteractive
  ENV LANG="C.UTF-8"
  ENV LC_ALL="C.UTF-8"
  ENV TZ="Etc/UTC"

  RUN groupadd --gid 1999 user
  RUN useradd --system \
    --uid 1999 \
    --gid 1999 \
    --no-log-init \
    --shell /bin/bash \
    user

  RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      ca-certificates \
      curl \
    && rm -rf /var/lib/apt/lists/*
  DO --pass-args +SAVE_IMAGE

helm:
  FROM --pass-args +debian12
  COPY (+helm-build/helm --VERSION=3.13.1) /usr/local/bin/helm
  USER user
  DO --pass-args +SAVE_IMAGE

helm-build:
  ARG --required VERSION
  ARG _download="helm-v${VERSION}-linux-${TARGETARCH}.tar.gz"

  FROM --pass-args +debian12
  WORKDIR /build
  COPY checksums/${_download}.sha256sum .
  RUN curl -fsSLO https://get.helm.sh/${_download}
  RUN sha256sum --check --status < ${_download}.sha256sum
  RUN tar -zxvf ${_download} \
    && mv linux-${TARGETARCH}/helm helm \
    && rm -r linux-${TARGETARCH}
  SAVE ARTIFACT helm /helm
