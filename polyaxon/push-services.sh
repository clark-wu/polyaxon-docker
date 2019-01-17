#!/usr/bin/env bash
if [ $# -lt 1 ]
  then
    echo "You should provide at least 1 args: tag"
     exit 1
fi


echo "Push image ${DOCKER_USERNAME}/polyaxon-api:$1"
docker push ${DOCKER_USERNAME}/polyaxon-api:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-api:latest
fi
echo "Push image ${DOCKER_USERNAME}/polyaxon-beat:$1"
docker push ${DOCKER_USERNAME}/polyaxon-beat:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-beat:latest
fi
echo "Push image ${DOCKER_USERNAME}/polyaxon-crons:$1"
docker push ${DOCKER_USERNAME}/polyaxon-crons:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-crons:latest
fi
echo "Push image ${DOCKER_USERNAME}/polyaxon-dockerizer:$1"
docker push ${DOCKER_USERNAME}/polyaxon-dockerizer:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-dockerizer:latest
fi
echo "Push image ${DOCKER_USERNAME}/polyaxon-events-handlers:$1"
docker push ${DOCKER_USERNAME}/polyaxon-events-handlers:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-events-handlers:latest
fi
echo "Push image ${DOCKER_USERNAME}/polyaxon-k8s-events-handlers:$1"
docker push ${DOCKER_USERNAME}/polyaxon-k8s-events-handlers:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-k8s-events-handlers:latest
fi
echo "Push image ${DOCKER_USERNAME}/polyaxon-logs-handlers:$1"
docker push ${DOCKER_USERNAME}/polyaxon-logs-handlers:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-logs-handlers:latest
fi
echo "Push image ${DOCKER_USERNAME}/polyaxon-hpsearch:$1"
docker push ${DOCKER_USERNAME}/polyaxon-hpsearch:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-hpsearch:latest
fi
echo "Push image ${DOCKER_USERNAME}/polyaxon-manage:$1"
docker push ${DOCKER_USERNAME}/polyaxon-manage:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-manage:latest
fi
echo "Push image ${DOCKER_USERNAME}/polyaxon-monitor-namespace:$1"
docker push ${DOCKER_USERNAME}/polyaxon-monitor-namespace:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-monitor-namespace:latest
fi
echo "Push image ${DOCKER_USERNAME}/polyaxon-monitor-resources:$1"
docker push ${DOCKER_USERNAME}/polyaxon-monitor-resources:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-monitor-resources:latest
fi
echo "Push image ${DOCKER_USERNAME}/polyaxon-monitor-statuses:$1"
docker push ${DOCKER_USERNAME}/polyaxon-monitor-statuses:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-monitor-statuses:latest
fi
echo "Push image ${DOCKER_USERNAME}/polyaxon-monolith:$1"
docker push ${DOCKER_USERNAME}/polyaxon-monolith:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-monolith:latest
fi
echo "Push image ${DOCKER_USERNAME}/polyaxon-scheduler:$1"
docker push ${DOCKER_USERNAME}/polyaxon-scheduler:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-scheduler:latest
fi
echo "Push image ${DOCKER_USERNAME}/polyaxon-sidecar:$1"
docker push ${DOCKER_USERNAME}/polyaxon-sidecar:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-sidecar:latest
fi
echo "Push image ${DOCKER_USERNAME}/polyaxon-tables:$1"
docker push ${DOCKER_USERNAME}/polyaxon-tables:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-tables:latest
fi
echo "Push image ${DOCKER_USERNAME}/polyaxon-streams:$1"
docker push ${DOCKER_USERNAME}/polyaxon-streams:$1
if [ "$1" == "master" ]
    then
        docker push ${DOCKER_USERNAME}/polyaxon-streams:latest
fi
