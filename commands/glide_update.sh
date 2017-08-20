#!/bin/bash

source ./env.sh

cd $GAE_ROOTDIR/vendor
mv src/ vendor/
glide update
mv vendor/ src/
