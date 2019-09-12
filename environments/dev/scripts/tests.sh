#!/bin/bash

. /app_env/bin/activate
pip install -r requirements.txt

exec $@
