#!/bin/bash

TAG=$1

docker run \
    --name php-${TAG} \
    -d \
    -p 8888:80 \
    --volume=${HOME}/.ssh/id_rsa:/home/developer/.ssh/id_rsa \
    imatic/php:${TAG}

#    --volume=~/Sites/research/web:/var/www/html \
