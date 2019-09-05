#!/bin/bash

#if [ ${1} -eq 'apt-get' ]; then
  sudo apt install -y \
    git \
    wget \
    vim \
    curl \
    dnsutils \
    net-tools \
    bash-completion \
    silversearcher-ag \
    nginx \
    dstat \
    tcpdump \
    nginx \
    htop
#else
#  sudo ${1} install -y \
#    git \
#    wget \
#    vim \
#    curl \
#    bind-utils\
#    net-tools \
#    bash-completion \
#    silver-searcher \
#    nginx \
#    dstat \
#    tcpdump \
#    nginx \
#    htop
#fi
