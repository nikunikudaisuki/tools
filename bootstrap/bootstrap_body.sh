#!/bin/bash

if [ `ls -1 /etc/|grep redhat-release| wc -l` -eq 1 ]; then
  COMMAND=yum
else
  COMMAND=apt-get
fi

./apt.sh ${COMMAND}
./netdata.sh
./percona.sh ${COMMAND}
./alp.sh
./mysql-tuner.sh

sudo echo "isucon1 $IPADDR1" >> /etc/hosts
sudo echo "isucon2 $IPADDR2" >> /etc/hosts
sudo echo "isucon3 $IPADDR3" >> /etc/hosts

sudo echo $1 > /etc/hosts
sudo shutdown -r now
