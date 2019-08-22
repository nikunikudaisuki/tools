#!/bin/bash

if [ ${1} -eq 'apt-get' ]; then
  sudo ${1} install -y \
    git \
    wget \
    vim \
    curl \
    dnsutils \
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
    silver-searcher \
    nginx \
    dstat \
    htop
