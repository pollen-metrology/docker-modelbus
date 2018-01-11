#!/bin/bash

set -e
set -x

SVNKIT_VERSION=1.9.0

cd /preflight
mkdir -p tmp
cd tmp

# Manual installation of SVNKit feature for Equinox
curl https://svnkit.com/org.tmatesoft.svn_$SVNKIT_VERSION.eclipse.zip \
    --output org.tmatesoft.svn_$SVNKIT_VERSION.eclipse.zip

unzip -a org.tmatesoft.svn_$SVNKIT_VERSION.eclipse.zip
mkdir -p /app/plugins
cp -v plugins/*.jar /app/plugins/


# Installation of the standalone part of SVNKit (library)
curl https://svnkit.com/org.tmatesoft.svn_$SVNKIT_VERSION.standalone.zip \
    --output org.tmatesoft.svn_$SVNKIT_VERSION.standalone.zip

unzip -a org.tmatesoft.svn_$SVNKIT_VERSION.standalone.zip
mkdir -p /app/lib
cp -v svnkit-$SVNKIT_VERSION/lib/*.jar /app/lib/

rm -rf /preflight/tmp
