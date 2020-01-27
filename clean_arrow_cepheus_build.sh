#!/bin/bash

# Original script by Nvertigo https://github.com/nvertigo/local_manifest

# if you want to build without using ccache, comment
# the next 4 lines
export USE_CCACHE=1
export CCACHE_DIR=~/.ccache
export CCACHE_MAX_SIZE=50G
ccache -M $CCACHE_MAX_SIZE

# we want all compiler messages in English
export LANGUAGE=C

# set up the environment (variables and functions)
source build/envsetup.sh

# clean the out dir; comment out, if you want to do
# a dirty build
make -j10 ARCH=arm clean

# fire up the building process and also log stdout
# and stderrout
breakfast arrow_cepheus-userdebug 2>&1 | tee breakfast.log && \
brunch arrow_cepheus-userdebug 2>&1 | tee make.log
