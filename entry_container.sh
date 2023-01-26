#!/bin/bash

# make ccache
mkdir -p /tmp/ccache
ccache --max-size 50G --dir /tmp/ccache

WORKSPACE=$PWD
docker run -it \
        --rm \
	--volume=${WORKSPACE}:/droid \
	--volume=/tmp/ccache:/tmp/ccache \
	--hostname droid-build \
	android-build-trusty:latest
