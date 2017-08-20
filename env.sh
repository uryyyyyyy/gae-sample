#!/bin/bash

export GOROOT=`which dev_appserver.py | sed -e "s/dev_appserver.py//g"`../platform/google_appengine/goroot-1.8
export GOPATH=`pwd`:`pwd`/vendor
export GAE_ROOTDIR=`pwd`
