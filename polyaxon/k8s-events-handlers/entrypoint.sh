#!/bin/bash

./check.sh
celery -A polyaxon worker --loglevel=INFO --without-mingle --without-gossip -n default@%h -Q $*
