#!/bin/bash

./check.sh
celery -A polyaxon beat --loglevel=INFO $*
