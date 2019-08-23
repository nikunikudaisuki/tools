#!/bin/bash

DATA_PAYLOAD=`cat <<_EOT_
payload={ \
      "channel": "#isucon8", \
          "username": "$1", \
              "text": "$2" \
            }
_EOT_`

curl -s -S -X POST --data-urlencode "${DATA_PAYLOAD}" "${WEBHOOKURL}" > /dev/null
