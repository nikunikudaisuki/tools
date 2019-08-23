#!/bin/bash
source ../setenv.sh

if [ -e result.txt ]; then
  rm result.txt
fi

USERNAME=chie8842
TEXT="start bootstrap at ${IPADDR1}"

../notify.sh "bootstrap" $WEBHOOKURL $USERNAME "$TEXT"
ssh isucon@$IPADDR1 'sh -s' < bootstrap_body.sh isucon81 >> result.txt
#../notify.sh $USERNAME "start bootstrap at ${IPADDR2}"
#ssh isucon@$IPADDR2 'sh -s' < bootstrap_body.sh isucon82 >> result.txt
#../notify.sh $USERNAME "start bootstrap at ${IPADDR3}"
#ssh isucon@$IPADDR3 'sh -s' < bootstrap_body.sh isucon83 >> result.txt
