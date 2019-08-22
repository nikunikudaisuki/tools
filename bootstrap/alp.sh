#!/bin/bash
cd /tmp
wget https://github.com/tkuchiki/alp/releases/download/v0.4.0/alp_linux_amd64.zip
unzip alp_linux_amd64.zip

sudo install ./alp /usr/local/bin
cd -
