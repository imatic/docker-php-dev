#!/bin/bash

TAG=$1

#docker stop php-${TAG}
docker kill php-${TAG}
docker rm php-${TAG}
docker build -f versions/${TAG}/Dockerfile -t imatic/php:${TAG} versions/${TAG}/
./run.sh ${TAG}
