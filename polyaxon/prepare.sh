#!/usr/bin/env bash
set -e

if [ $# -lt 1 ]
  then
    echo "You should provide at least 1 args: branch"
     exit 1
fi

BRANCH=$1
GIT_REPO_OWNER=${GIT_REPO_OWNER:-polyaxon}
GIT_REPO="https://github.com/${GIT_REPO_OWNER}/polyaxon.git"
GIT_CLONE_DIR=${GIT_CLONE_DIR:-clones}

echo "Clonning git repo: $GIT_REPO"
rm -rf "${GIT_CLONE_DIR}"
mkdir "${GIT_CLONE_DIR}"
cd "${GIT_CLONE_DIR}"/
git clone "${GIT_REPO}"
cd polyaxon

if [ "${BRANCH}" != "master" ]
  then
    git fetch --all --tags --prune

    if
        git rev-parse "${BRANCH}" >/dev/null 2>&1
    then
        git checkout tags/"${BRANCH}" -b "${BRANCH}"
        echo "Using tag"
        cd ../
        touch is_tag
    else
        git checkout "${BRANCH}"
        echo "Using branch: ${BRANCH}"
    fi
fi
