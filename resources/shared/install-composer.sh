#!/usr/bin/env bash

if [ ! -d ~/bin ]; then
  mkdir ~/bin
fi
wget https://getcomposer.org/installer -O ~/composer-installer.php && \
php ~/composer-installer.php --install-dir ~/bin --filename composer && \
rm ~/composer-installer.php