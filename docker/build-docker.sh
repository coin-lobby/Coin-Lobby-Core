#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-coinlobby/coinlobbyd-development}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/coinlobbyd docker/bin/
cp $BUILD_DIR/src/coinlobby-cli docker/bin/
cp $BUILD_DIR/src/coinlobby-tx docker/bin/
strip docker/bin/coinlobbyd
strip docker/bin/coinlobby-cli
strip docker/bin/coinlobby-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
