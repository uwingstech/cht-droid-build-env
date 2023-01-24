#!/bin/bash

cp ~/.gitconfig ./gitconfig
docker build --build-arg userid=$(id -u) --build-arg groupid=$(id -g) --build-arg username=$(id -un) --tag android-build-trusty:latest .
