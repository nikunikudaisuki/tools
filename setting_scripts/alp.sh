#!/bin/bash
cd /tmp
wget https://github.com/tkuchiki/alp/releases/tag/v1.0.0-rc1
unzip alp_linux_amd64.zip

sudo install ./alp /usr/local/bin
cd -
