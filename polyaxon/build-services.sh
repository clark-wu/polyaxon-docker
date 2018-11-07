#!/usr/bin/env bash
if [ $# -lt 2 ]
  then
    echo "You should provide at least 2 args: branch docker-tag"
     exit 1
fi

BRANCH=$1
IMAGE_TAG=$(echo "$2" | tr \/ -)

echo "Preparing for docker build..."
./polyaxon/prepare.sh "${BRANCH}"

echo "Staring build..."
./polyaxon/build-service.sh core "${IMAGE_TAG}"
./polyaxon/build-service.sh api "${IMAGE_TAG}"
./polyaxon/build-service.sh beat "${IMAGE_TAG}"
./polyaxon/build-service.sh crons "${IMAGE_TAG}"
./polyaxon/build-service.sh dockerizer "${IMAGE_TAG}"
./polyaxon/build-service.sh events-handlers "${IMAGE_TAG}"
./polyaxon/build-service.sh k8s-events-handlers "${IMAGE_TAG}"
./polyaxon/build-service.sh logs-handlers "${IMAGE_TAG}"
./polyaxon/build-service.sh hpsearch "${IMAGE_TAG}"
./polyaxon/build-service.sh manage "${IMAGE_TAG}"
./polyaxon/build-service.sh monitor-namespace "${IMAGE_TAG}"
./polyaxon/build-service.sh monitor-resources "${IMAGE_TAG}"
./polyaxon/build-service.sh monitor-statuses "${IMAGE_TAG}"
./polyaxon/build-service.sh monolith "${IMAGE_TAG}"
./polyaxon/build-service.sh scheduler "${IMAGE_TAG}"
./polyaxon/build-service.sh sidecar "${IMAGE_TAG}"
./polyaxon/build-service.sh tables "${IMAGE_TAG}"
./polyaxon/build-service.sh streams "${IMAGE_TAG}"

echo "Cleaning up..."
./polyaxon/clean.sh
