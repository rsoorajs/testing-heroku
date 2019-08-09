#!/bin/bash

echo "===== Download Tcloud App ====="
URL=$(curl -s http://api.github.com/repos/asapach/peerflix-server/releases/latest | grep browser_download_url | cut -d '"' -f 4)
wget $URL -O tcloud.tgz

echo "===== Unarchive App ====="
mkdir tcloud
tar zxf tcloud.tgz -C tcloud --strip-components 1

echo "===== Install dependencies ====="
cd tcloud
npm install --only=prod
