#!/usr/bin/env bash

apt-get update -y

apt-get install -y \
        libapache2-mod-php5 \
        php5-curl \
        php5-gd \
        php5-intl \
        php5-json \
        php5-mcrypt \
        php5-mysql \
        php5-pgsql

apt-get clean
