#!/bin/bash
if [ -e /etc/my.cnf ]; then
  sudo cp -p /etc/my.cnf /etc/my.cnf.bak
fi

sudo cp ../configs/my.cnf /etc/my.cnf
sudo chown root:root /etc/my.cnf
sudo chmod 644 /etc/my.cnf

if [ -e /etc/nginx/nginx.conf ]; then
  sudo cp -p /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak
fi

sudo cp ../configs/nginx.conf /etc/nginx/nginx.conf
sudo chown root:root /etc/nginx/nginx.conf
sudo chmod 644 /etc/nginx/nginx.conf
