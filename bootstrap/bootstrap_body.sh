#!/bin/bash

cd /tmp
if [ `ls -1 tools | wc -l` -eq 1 ]; then
  git clone https://github.com/nikunikudaisuki/tools -b add_setting_scripts
fi

cd tools/bootstrap
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

if [ -d $HOME/.ssh ]; then
  mkdir $HOME/.ssh
  chmod 700 $HOME/.ssh
fi
curl https://github.com/TKNGUE.keys https://github.com/himkt.keys https://github.com/chie8842.keys >> ${HOME}/.ssh/authorized_keys

chmod 600 $HOME/.ssh/authorized_keys
sudo echo $1 > /etc/hosts
#sudo shutdown -r now
