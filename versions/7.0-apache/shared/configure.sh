#!/usr/bin/env bash

# Enable mod rewrite
a2enmod rewrite

# Apache virtual
cp /resources/php/shared/apache-virtual.conf /etc/apache2/sites-enabled/000-default.conf

# User and permissions for document root
sh /resources/php/shared/create-user.sh

sudo -u ${USER_NAME} sh -c 'sh /resources/debian/shared/configure-user.sh'
sudo -u ${USER_NAME} sh -c 'sh /resources/php/shared/configure-ssh.sh'
sudo -u ${USER_NAME} sh -c 'sh /resources/php/shared/install-composer.sh'

# Document root permissions
chown -R ${USER_NAME}:${USER_NAME} /var/www/html/

# Default document root content
rm -rf /var/www/html/*
sudo -u ${USER_NAME} sh -c 'mkdir ~/current/web && touch ~/current/web/index.php && echo "<?php phpinfo();" > ~/current/web/index.php'
