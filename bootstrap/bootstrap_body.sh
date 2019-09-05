#!/bin/bash

cd /tmp
#if ! [ -d tools ]; then
#  git clone https://github.com/chie8842/tools
#fi
#
#cd tools/bootstrap
#if [ `ls -1 /etc/|grep redhat-release| wc -l` -eq 1 ]; then
#  COMMAND=yum
#else
#  COMMAND=apt-get
#fi

bash ./apt.sh # ${COMMAND}
#bash ./netdata.sh
bash ./alp.sh
bash ./mysql-tuner.sh
bash ./systemd.sh
bash ./copy_conf.sh
bash ./percona.sh # ${COMMAND}

sudo echo "isucon1 $IPADDR1" >> /etc/hosts
sudo echo "isucon2 $IPADDR2" >> /etc/hosts
sudo echo "isucon3 $IPADDR3" >> /etc/hosts

if ! [ -d $HOME/.ssh ]; then
  mkdir $HOME/.ssh
  chmod 700 $HOME/.ssh
fi
curl https://github.com/TKNGUE.keys https://github.com/himkt.keys https://github.com/chie8842.keys >> ${HOME}/.ssh/authorized_keys

chmod 600 $HOME/.ssh/authorized_keys
#sudo echo $1 > /etc/hosts
#sudo shutdown -r now
bash ./put_dotfiles.sh
