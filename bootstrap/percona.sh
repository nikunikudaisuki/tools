#!/bin/bash
cd /tmp/

# ubuntu
#if [ ${1} -eq "apt-get" ]; then
  wget https://www.percona.com/downloads/percona-toolkit/3.0.13/binary/debian/bionic/x86_64/percona-toolkit_3.0.13-1.bionic_amd64.deb
  sudo apt install -y \
    libdbd-mysql-perl \
    libdbi-perl \
    libio-socket-ssl-perl \
    libnet-ssleay-perl \
    libterm-readkey-perl
  sudo dpkg -i percona-toolkit_3.0.13-1.bionic_amd64.deb
## redhat
#else
#  wget https://www.percona.com/downloads/percona-toolkit/3.0.13/binary/redhat/7/x86_64/percona-toolkit-3.0.13-1.el7.x86_64.rpm
#  sudo yum install -y percona-toolkit-3.0.13-1.el7.x86_64.rpm
#  sudo yum install -y percona-toolkit
#fi

cd -
