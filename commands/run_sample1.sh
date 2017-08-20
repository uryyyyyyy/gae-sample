#!/bin/bash

source ./env.sh

cd $GAE_ROOTDIR
dev_appserver.py app/sample1/local.yaml