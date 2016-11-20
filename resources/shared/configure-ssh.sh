#!/usr/bin/env bash

mkdir ~/.ssh && touch ~/.ssh/known_hosts
ssh-keyscan -t rsa bitbucket.org > ~/.ssh/known_hosts
ssh-keyscan -t rsa github.com > ~/.ssh/known_hosts
