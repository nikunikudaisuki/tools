#!/bin/bash

set -ex
source ../setenv.sh

if [ -e result.txt ]; then
  rm result.txt

CHANNEL=test
USERNAME=chie8842

../notify.sh $CHANNEL $WEBHOOKURL $USERNAME "start deployment at ${IPADDR1}"
ssh isucon@$IPADDR1 'sh' < deploy_body.sh >> result.txt
../notify.sh $CHANNEL $WEBHOOKURL $USERNAME "start deployment at ${IPADDR2}"
ssh isucon@$IPADDR2 'sh' < deploy_body.sh >> result.txt
../notify.sh $CHANNEL $WEBHOOKURL $USERNAME "start deployment at ${IPADDR3}"
ssh isucon@$IPADDR3 'sh' < deploy_body.sh >> result.txt
../notify.sh $CHANNEL $WEBHOOKURL $USERNAME "finished deployment"
result=`cat result.txt`
../notify.sh $CHANNEL $WEBHOOKURL $USERNAME result
