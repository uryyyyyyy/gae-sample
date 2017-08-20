#!/bin/bash

source ./env.sh

cd $GAE_ROOTDIR
cd src
glide update
