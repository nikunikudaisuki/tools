#!/bin/bash
source setenv.sh
echo $WEBHOOKURL
DATA_PAYLOAD=`cat <<_EOT_
payload={ \
      "channel": "#test", \
      "username": "${1}", \
      "text": "@${3} ${4}" \
      }
_EOT_`
echo $DATA_PAYLOAD
curl -s -S -X POST --data-urlencode "${DATA_PAYLOAD}" "$2" > /dev/null
