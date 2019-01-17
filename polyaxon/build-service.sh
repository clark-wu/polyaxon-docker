#!/bin/bash
set -e
set -o pipefail

if [ $# -lt 2 ]
  then
    echo "You should provide at least 2 args: image name and tag"
    exit 1
fi

IMAGE_NAME=$1
IMAGE_TAG=$2

cd clones/polyaxon

if [ -f .dockerignore ]; then
    rm .dockerignore
fi

if [ -f Dockerfile ]; then
    rm Dockerfile
fi

echo "Copy Dockerfile and .dockerignore"
cp "../../polyaxon/${IMAGE_NAME}/.dockerignore" .
if [ -f "../../polyaxon/${IMAGE_NAME}/entrypoint.sh" ]; then
    cp "../../polyaxon/${IMAGE_NAME}/entrypoint.sh" ./polyaxon/entrypoint.sh
fi

if [ "${IMAGE_TAG}" == "master" ]
    then
        cp "../../polyaxon/${IMAGE_NAME}/Dockerfile.master" Dockerfile
    else
        cd ../
        if [ -f is_tag ]
            then
                echo "Build for Tag with Dockerfile"
                cd polyaxon
                cp "../../polyaxon/${IMAGE_NAME}/Dockerfile" .
            else
                echo "Build for Branch with Dockerfile.master"
                cd polyaxon
                cp "../../polyaxon/${IMAGE_NAME}/Dockerfile.master" Dockerfile
        fi
fi

if [ "${IMAGE_NAME}" == "core" ]
    then
       echo "Build Base image for ${IMAGE_NAME}"
       docker build -t "${DOCKER_USERNAME}/polyaxon-${IMAGE_NAME}" .
    else
       echo "Build Base image for ${IMAGE_NAME}:${IMAGE_TAG}"
       docker build -t "${DOCKER_USERNAME}/polyaxon-${IMAGE_NAME}:${IMAGE_TAG}" .
       if [ "${IMAGE_TAG}" == "master" ]
           then
               docker build -t "${DOCKER_USERNAME}/polyaxon-${IMAGE_NAME}:latest" .
       fi
fi
