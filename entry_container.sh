#!/bin/bash

WORKSPACE=$PWD
docker run --privileged -it \
        --rm \
	--volume=${WORKSPACE}:/droid \
	--hostname droid-build \
	android-build-trusty:latest
