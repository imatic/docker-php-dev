#!/usr/bin/env bash

# Enable mod rewrite
a2enmod rewrite

# Apache virtual
cp /resources/php-shared/apache-virtual.conf /etc/apache2/sites-enabled/000-default.conf

# PHP ini
cp /resources/php-shared/php.ini /etc/php/7.0/apache2/conf.d/90-user.ini
cp /resources/php-shared/php.ini /etc/php/7.0/cli/conf.d/90-user.ini

# User
sh /resources/php-shared/create-user.sh
sudo -u ${USER_NAME} sh -c 'sh /resources/debian-shared/configure-user.sh'
sudo -u ${USER_NAME} sh -c 'sh /resources/php-shared/configure-ssh.sh'
sudo -u ${USER_NAME} sh -c 'sh /resources/php-shared/install-composer.sh'
