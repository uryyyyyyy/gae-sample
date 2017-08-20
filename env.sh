#!/bin/bash

export PROJECT_ID=haha
echo "PROJECT_ID = $PROJECT_ID"
export VERSION=`TZ=Asia/Tokyo date +%Y%m%d_%H%M%S`-`git rev-parse --short HEAD`
export GOROOT=`which dev_appserver.py | sed -e "s/dev_appserver.py//g"`../platform/google_appengine/goroot-1.8
export GOPATH=`pwd`
export PATH=$PATH:`pwd`/bin
export GAE_ROOTDIR=`pwd`
