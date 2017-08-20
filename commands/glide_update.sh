#!/bin/bash

source ./env.sh

cd $GAE_ROOTDIR
cd vendor
rm -r -f src/
glide update
mv vendor/ src/
