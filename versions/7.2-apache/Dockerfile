FROM imatic/php:7.2-apache

RUN apt-get update && \
    # required because of java
    mkdir /usr/share/man/man1 && \
    apt-get install --yes git jq default-jre chromium && \
    curl --output docker-tools-latest.deb --location 'https://github.com/imatic/docker-tools/releases/download/1.1.2-1/docker-tools-1.1.2-1.deb' && \
    dpkg --install --ignore-depends docker-ce ./docker-tools-latest.deb && \
    # cleanup
    rm -f ./docker-tools-latest.deb && \
    rm -rf /var/lib/apt/lists/*
