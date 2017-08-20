#!/bin/bash

source ./env.sh

export PROJECT_ID=$1
echo "PROJECT_ID = $PROJECT_ID"
export VERSION=`TZ=Asia/Tokyo date +%Y%m%d-%H%M%S`-`git rev-parse --short HEAD`

cd $GAE_ROOTDIR

gcloud app deploy --project $PROJECT_ID --no-promote --version $VERSION ./app/sample1/prod.yaml