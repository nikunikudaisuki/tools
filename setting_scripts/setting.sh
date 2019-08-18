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
