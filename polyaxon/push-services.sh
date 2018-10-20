#!/usr/bin/env bash
if [ $# -lt 1 ]
  then
    echo "You should provide at least 1 args: tag"
     exit 1
fi


echo "Push image polyaxon/polyaxon-api:$1"
docker push polyaxon/polyaxon-api:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-api:latest
fi
echo "Push image polyaxon/polyaxon-beat:$1"
docker push polyaxon/polyaxon-beat:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-beat:latest
fi
echo "Push image polyaxon/polyaxon-crons:$1"
docker push polyaxon/polyaxon-crons:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-crons:latest
fi
echo "Push image polyaxon/polyaxon-dockerizer:$1"
docker push polyaxon/polyaxon-dockerizer:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-dockerizer:latest
fi
echo "Push image polyaxon/polyaxon-events-handlers:$1"
docker push polyaxon/polyaxon-events-handlers:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-events-handlers:latest
fi
echo "Push image polyaxon/polyaxon-k8s-events-handlers:$1"
docker push polyaxon/polyaxon-k8s-events-handlers:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-k8s-events-handlers:latest
fi
echo "Push image polyaxon/polyaxon-logs-handlers:$1"
docker push polyaxon/polyaxon-logs-handlers:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-logs-handlers:latest
fi
echo "Push image polyaxon/polyaxon-hpsearch:$1"
docker push polyaxon/polyaxon-hpsearch:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-hpsearch:latest
fi
echo "Push image polyaxon/polyaxon-manage:$1"
docker push polyaxon/polyaxon-manage:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-manage:latest
fi
echo "Push image polyaxon/polyaxon-monitor-namespace:$1"
docker push polyaxon/polyaxon-monitor-namespace:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-monitor-namespace:latest
fi
echo "Push image polyaxon/polyaxon-monitor-resources:$1"
docker push polyaxon/polyaxon-monitor-resources:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-monitor-resources:latest
fi
echo "Push image polyaxon/polyaxon-monitor-statuses:$1"
docker push polyaxon/polyaxon-monitor-statuses:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-monitor-statuses:latest
fi
echo "Push image polyaxon/polyaxon-monolith:$1"
docker push polyaxon/polyaxon-monolith:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-monolith:latest
fi
echo "Push image polyaxon/polyaxon-scheduler:$1"
docker push polyaxon/polyaxon-scheduler:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-scheduler:latest
fi
echo "Push image polyaxon/polyaxon-sidecar:$1"
docker push polyaxon/polyaxon-sidecar:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-sidecar:latest
fi
echo "Push image polyaxon/polyaxon-streams:$1"
docker push polyaxon/polyaxon-streams:$1
if [ "$1" == "master" ]
    then
        docker push polyaxon/polyaxon-streams:latest
fi
