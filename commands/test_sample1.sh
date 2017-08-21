#!/bin/bash

source ./env.sh

cd $GAE_ROOTDIR
go test ./src/sample1/...
