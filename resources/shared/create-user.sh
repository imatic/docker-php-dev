#!/usr/bin/env bash

USER_HOME=/home/${USER_NAME}

useradd \
    --create-home \
    --shell=/bin/bash \
    ${USER_NAME}

ln \
    -s \
    /var/www/html \
    ${USER_HOME}/current


# Bin
sudo -u ${USER_NAME} sh -c "mkdir ${USER_HOME}/bin"
