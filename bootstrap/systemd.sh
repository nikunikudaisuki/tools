#if [ ${1} -eq "apt-get" ]; then
  sudo systemctl disable apparmor.service
#else
#  sudo systemctl disable firewalld
#fi
