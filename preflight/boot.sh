#!/bin/bash

set -e
set -x

if [ "$MODELBUS_IP" == "" ]; then
    MODELBUS_IP=0.0.0.0
fi

sed  "s/#IP#/$MODELBUS_IP/" /preflight/modelbus.config \
    > /app/serverConfiguration/modelbus.config

export MODELBUS_ROOT=/app
supervisord -c /app/supervisord.conf
