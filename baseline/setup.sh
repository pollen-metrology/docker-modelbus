#!/bin/bash

set -e
set -x

apt-get update

# Install Java
apt-get --no-install-recommends install -q -y \
    openjdk-8-jre-headless \
    supervisor \
    unzip \
    curl

rm -rf /var/lib/apt/lists/*

