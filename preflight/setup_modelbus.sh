#!/bin/bash

set -e
set -x

cd /app
curl "http://www.modelbus.org/en/modelbusdownloads.html?mCtrl=Product&mOp=Download&m_Releases%5Baid%5D=106" \
    --output "modelbus-2.0.0-server-luna-linux_x86_64.zip"
unzip -a modelbus-2.0.0-server-luna-linux_x86_64.zip
chmod +x /app/modelbus


