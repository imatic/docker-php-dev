FROM imatic/debian:stable
MAINTAINER Stepan Koci <stepan.koci@gmail.com>

ENV TERM xterm
ENV TAG 7.0-apache

# PHP/Apache Installation
COPY resources/${TAG}/sources.list          /resources/php/sources.list
COPY resources/${TAG}/install.sh            /resources/php/install.sh
RUN sh /resources/php/install.sh

# Node.js installation
COPY resources/shared/install-node7.sh      /resources/php-shared/
RUN sh /resources/php-shared/install-node7.sh

# Wkhtmltopdf installation
#COPY resources/shared/install-wkhtmltopdf.sh      /resources/php-shared/
#RUN sh /resources/php-shared/install-wkhtmltopdf.sh

# Resources
COPY resources/shared /resources/php-shared
COPY resources/${TAG} /resources/php

# Configure
ENV USER_NAME developer
ENV APACHE_RUN_USER ${USER_NAME}
ENV APACHE_RUN_GROUP www-data
RUN /resources/php/configure.sh

EXPOSE 80
EXPOSE 443

WORKDIR /var/www/html

CMD ['/usr/sbin/apache2ctl' '-D' 'FOREGROUND']
