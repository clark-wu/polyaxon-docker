#!/bin/bash

./check.sh
python3 -m sanic streams.api.app --host=0.0.0.0 --port=1337
