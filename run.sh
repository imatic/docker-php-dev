#!/bin/bash

TAG=$1

docker run \
    --name php-${TAG} \
    -d \
    imatic/php:${TAG}
