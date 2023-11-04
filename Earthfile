VERSION --pass-args 0.7
ARG --global REGISTRY="ghcr.io"
ARG --global EARTHLY_GIT_BRANCH
ARG --global EARTHLY_GIT_COMMIT_TIMESTAMP
ARG --global EARTHLY_GIT_PROJECT_NAME
ARG --global EARTHLY_TARGET_TAG
ARG --global EARTHLY_TARGET_TAG_DOCKER
ARG --global TARGETARCH
FROM ghcr.io/nalabelle/build/debian12

SAVE_IMAGE:
  COMMAND
  ARG EARTHLY_TARGET_NAME
  ARG registry="${REGISTRY}"
  ARG project=${EARTHLY_GIT_PROJECT_NAME}
  ARG target="${EARTHLY_TARGET_NAME}"
  ARG patch="${EARTHLY_GIT_COMMIT_TIMESTAMP}"
  ARG version="0.1"
  ARG latest=false
  ARG variant=""
  IF [ $(echo "${VERSION}" | tr -cd '.' | wc -m) -le 1 ]
    ARG version_tag="${version}.${EARTHLY_GIT_COMMIT_TIMESTAMP}"
  ELSE
    ARG version_tag="${version}"
  END

  ARG IMAGE=${registry}/${project}/${target}
  IF [ "${EARTHLY_TARGET_TAG}" = "main" ]
    IF [ "${latest}" = "true" ]
      SAVE IMAGE --push ${IMAGE}:latest
    END
    IF [ -n "${variant}" ]
      SAVE IMAGE --push ${IMAGE}:${version_tag}
    ELSE
      SAVE IMAGE --push ${IMAGE}:${version_tag}-${variant}
    END
  ELSE
    IF [ -n "${variant}" ]
      SAVE IMAGE ${IMAGE}:${version_tag}-${variant}-${EARTHLY_TARGET_TAG_DOCKER}
    ELSE
      SAVE IMAGE ${IMAGE}:${version_tag}-${EARTHLY_TARGET_TAG_DOCKER}
    END
  END
