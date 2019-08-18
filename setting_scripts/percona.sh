#!/bin/bash
cd /tmp/
wget https://www.percona.com/downloads/percona-toolkit/3.0.13/binary/debian/bionic/x86_64/percona-toolkit_3.0.13-1.bionic_amd64.deb

sudo apt-get install -y \
  libdbd-mysql-perl \
  libdbi-perl \
  libio-socket-ssl-perl \
  libnet-ssleay-perl \
  libterm-readkey-perl

sudo dpkg -i percona-toolkit_3.0.13-1.bionic_amd64.deb
cd -
