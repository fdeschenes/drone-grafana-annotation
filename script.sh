#!/bin/sh
CURRENT_TIMESTAMP=$(date +%s000)
TAGS=$(echo $PLUGIN_TAGS | sed -r 's/[^,]+/"&"/g')

if [ ! -z ${PLUGIN_API_KEY} ]; then
  GRAFANA_API_KEY=$PLUGIN_API_KEY
fi

curl -H "Authorization: Bearer ${GRAFANA_API_KEY}" \
     -H "Accept: application/json" \
     -H "Content-Type: application/json" \
     -d "{\"time\":${CURRENT_TIMESTAMP},\"tags\":[${TAGS}],\"text\":\"${PLUGIN_TEXT}\"}" \
     -fsS ${PLUGIN_URL%/}/api/annotations
