#!/usr/bin/env bash
if [ $# -lt 2 ]
  then
    echo "You should provide at least 2 args: image name and tag"
     exit 1
fi

cd clones/polyaxon

if [ -f .dockerignore ]; then
    rm .dockerignore
fi

if [ -f Dockerfile ]; then
    rm Dockerfile
fi

echo "Copy Dockerfile and .dockerignore"
cp ../../polyaxon/$1/.dockerignore .
if [ -f ../../polyaxon/$1/entrypoint.sh ]; then
    cp ../../polyaxon/$1/entrypoint.sh ./polyaxon/entrypoint.sh
fi

if [ "$2" == "master" ]
    then
        cp ../../polyaxon/$1/Dockerfile.master Dockerfile
    else
        cd ../
        if [ -f is_tag ]
            then
                echo "Build for Tag with Dockerfile"
                cd polyaxon
                cp ../../polyaxon/$1/Dockerfile .
            else
                echo "Build for Branch with Dockerfile.master"
                cd polyaxon
                cp ../../polyaxon/$1/Dockerfile.master Dockerfile
        fi
fi

if [ "$1" == "core" ]
    then
       echo "Build Base image for $1"
       docker build -t polyaxon/polyaxon-$1 .
    else
       echo "Build Base image for $1:$2"
       docker build -t polyaxon/polyaxon-$1:$2 .
       if [ "$2" == "master" ]
           then
               docker build -t polyaxon/polyaxon-$1:latest .
       fi
fi
