#!/bin/bash

./polyaxon/check.sh
python3 manage.py monitor_resources $*
