FROM imatic/php:7.4-apache

RUN apt-get update && \
    apt-get install --yes iceweasel jq && \
    # Update Firefox
    curl --location --output /opt/FirefoxSetup.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US" && \
    mkdir /opt/firefox && \
    tar xjf /opt/FirefoxSetup.tar.bz2 -C /opt/firefox/ && \
    mv /usr/lib/firefox-esr/firefox-esr /usr/lib/firefox-esr/firefox-esr_orig && \
    ln -s /opt/firefox/firefox/firefox /usr/lib/firefox-esr/firefox-esr && \
    rm /opt/FirefoxSetup.tar.bz2 && \
    # Install geckodriver
    tag_name=$(curl --silent --show-error https://api.github.com/repos/mozilla/geckodriver/releases/latest | jq --raw-output '.tag_name') && \
    mkdir /opt/geckodriver && \
    curl --location --output /opt/geckodriver/geckodriver.tar.gz "https://github.com/mozilla/geckodriver/releases/download/${tag_name}/geckodriver-${tag_name}-linux64.tar.gz" && \
    tar -xvzf /opt/geckodriver/geckodriver.tar.gz -C /opt/geckodriver/ && \
    mv /opt/geckodriver/geckodriver /usr/local/bin && \
    rm -rf /opt/geckodriver && \
    # cleanup
    rm -rf /var/lib/apt/lists/*
