VERSION --pass-args --arg-scope-and-set 0.7
ARG --global REGISTRY="ghcr.io"
ARG --global LABEL_NAMESPACE="com.nalabelle"
ARG --global EARTHLY_GIT_BRANCH
ARG --global EARTHLY_GIT_PROJECT_NAME
ARG --global EARTHLY_TARGET_TAG
ARG --global EARTHLY_TARGET_TAG_DOCKER
ARG --global TARGETARCH
ARG BASE_IMAGE="ghcr.io/nalabelle/build/debian12@sha256:72d9a3e195826990664c024ee1e54758fbc3484bfc57ae6d920464b81efebb23"

FROM $BASE_IMAGE

manifest-simple-versioning:
  ARG EARTHLY_GIT_COMMIT_TIMESTAMP
  ARG version="0.1.${EARTHLY_GIT_COMMIT_TIMESTAMP}"
  COPY --if-exists version.txt version
  RUN if [ ! -f version ]; then \
        echo "Using development version"; \
        echo "${version}" > version; \
      fi
  SAVE ARTIFACT version

VERSION_CZ:
  COMMAND
  COPY version.txt version
  SAVE ARTIFACT version

build-time:
  RUN --no-cache date --rfc-3339=seconds > time
  SAVE ARTIFACT time

# Applies Docker labels with metadata that can be searched for
# https://docs.docker.com/engine/reference/commandline/images/#show-images-with-a-given-label
STANDARD_LABEL:
  COMMAND
  ARG EARTHLY_CI
  ARG EARTHLY_GIT_HASH
  ARG EARTHLY_GIT_ORIGIN_URL
  ARG EARTHLY_GIT_BRANCH
  ARG EARTHLY_GIT_PROJECT_NAME
  ARG CI="false"
  ARG CI_REF_NAME # github.ref_name
  ARG CI_REF_TYPE # github.ref_type
  ARG CI_REPOSITORY_URL # github.repositoryUrl
  ARG CI_RUN_ID # github.run_id
  ARG CI_RUN_NUMBER # github.run_number
  ARG CI_SHA # github.sha
  LET _source_sha = "${CI_SHA}"
  IF [ -z "${CI_SHA}" ]
    SET _source_sha = "${EARTHLY_GIT_HASH}"
  END

  # CI LABELS (github mostly)
  LABEL "${LABEL_NAMESPACE}.ci"="${CI}"
  IF [ "${CI}" = "true" ]
    LABEL "org.opencontainers.image.source"="${CI_REPOSITORY_URL}"
    LABEL "${LABEL_NAMESPACE}.ci.run-id"="${CI_RUN_ID}"
    LABEL "${LABEL_NAMESPACE}.ci.run-number"="${CI_RUN_NUMBER}"
    LABEL "${LABEL_NAMESPACE}.ci.repository-url"="${CI_REPOSITORY_URL}"
    LABEL "${LABEL_NAMESPACE}.ci.sha"="${CI_SHA}"
    LABEL "${LABEL_NAMESPACE}.ci.ref-name"="${CI_REF_NAME}"
    LABEL "${LABEL_NAMESPACE}.ci.ref-type"="${CI_REF_TYPE}"
  END

  # EARTHLY PROJECT LABELS
  LABEL "${LABEL_NAMESPACE}.earthly.git-project-name"="${EARTHLY_GIT_PROJECT_NAME}"
  LABEL "${LABEL_NAMESPACE}.earthly.hash"="${EARTHLY_GIT_HASH}"
  LABEL "${LABEL_NAMESPACE}.earthly.origin"="${EARTHLY_GIT_ORIGIN_URL}"
  LABEL "${LABEL_NAMESPACE}.earthly.branch"="${EARTHLY_GIT_BRANCH}"
  LABEL "${LABEL_NAMESPACE}.earthly.ci"="${EARTHLY_CI}"

  # OCI LABELS
  LABEL "org.opencontainers.image.revision"="${_source_sha}"
  # Always need to break cache here
  COPY +build-time/time /manifests/build-time
  LET _build_time=$(cat /manifests/build-time)
  RUN echo "BUILD TIME: $_build_time"
  LABEL "org.opencontainers.image.created"="$_build_time"

SAVE_IMAGE:
  COMMAND
  ARG EARTHLY_TARGET_NAME
  ARG EARTHLY_TARGET_TAG_DOCKER
  ARG registry="${REGISTRY}"
  ARG component=${EARTHLY_GIT_PROJECT_NAME}
  ARG target="${EARTHLY_TARGET_NAME}"
  ARG --required version
  ARG variant=""
  DO +STANDARD_LABEL

  LET _tag="${version}"
  IF [ -n "${variant}" ]
    SET _tag="${_tag}-${variant}"
  END
  IF [ "${EARTHLY_TARGET_TAG}" != "main" ]
    SET _tag="${_tag}-${EARTHLY_TARGET_TAG}"
  END
  RUN echo "VERSION: ${_tag}"

  ARG IMAGE=${registry}/${component}/${target}
  SAVE IMAGE --push ${IMAGE}:${_tag}
