#!/bin/bash

TAG=$1

#docker stop php-${TAG}
docker kill php-${TAG}
docker rm php-${TAG}
docker build -f resources/${TAG}/Dockerfile -t imatic/php:${TAG} .
./run.sh ${TAG}
