#!/bin/bash

source ./env.sh

cd $GAE_ROOTDIR
cd src
which glide
glide update
