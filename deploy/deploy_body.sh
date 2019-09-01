#!/bin/bash

set -ex
APPDIR=/home/isucon/torb
cd $APPDIR && \
git pull && make build &&\
sudo systemctl restart mysql.service &&\
sudo service memcached restart &&\
sudo systemctl restart torb.go.service && \
sudo systemctl restart nginx.service
