#!/usr/bin/env bash

cat /resources/php/sources.list >> /etc/apt/sources.list
apt-get update -y

apt-get install -y \
        libapache2-mod-php7.1 \
        php7.1-curl \
        php7.1-ctype \
        php7.1-gd \
        php7.1-intl \
        php7.1-json \
        php7.1-mbstring \
        php7.1-mcrypt \
        php7.1-mysql \
        php7.1-pgsql \
        php7.1-xml

apt-get clean
