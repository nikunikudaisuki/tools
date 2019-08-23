#!/bin/bash

if [ ${1} -eq 'apt-get' ]; then
  sudo ${1} install -y \
    git \
    wget \
    vim \
    curl \
    dnsutils \
    net-tools \
    bash-completion \
    silver-searcher \
    nginx \
    dstat \
    htop
else
  sudo ${1} install -y \
    git \
    wget \
    vim \
    curl \
    bind-utils\
    net-tools \
    bash-completion \
    silver-searcher \
    nginx \
    dstat \
    htop
