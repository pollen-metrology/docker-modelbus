#!/bin/bash

set -e
set -x

mkdir /app
mkdir -p /app/data
mkdir -p /app/repository
mkdir -p /app/repository/svn
mkdir -p /app/repository/git
mkdir -p /app/lib

cd /preflight
mv supervisord.conf /app/supervisord.conf

# Deactivated in favor og Git backend
# /bin/bash /preflight/setup_modelbus.sh

/bin/bash /preflight/setup_modelbus.sh

adduser --system --no-create-home modelbus
chown -R modelbus /app
