#!/bin/bash

cd /tmp
bash <(curl -Ss https://my-netdata.io/kickstart.sh) --non-interactive
sudo systemctl start netdata
cd -
