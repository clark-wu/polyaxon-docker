#!/bin/bash

./check.sh
python3 manage.py monitor_namespace $*
