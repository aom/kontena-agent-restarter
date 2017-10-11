#!/usr/bin/env sh

CONTAINER_ID=$(docker ps -q --no-trunc -f "name=^/kontena-agent$")

if [ "$CONTAINER_ID" != "" ]; then
  echo "Restarting kontena-agent..."
  docker restart kontena-agent
fi

echo "Sleeping until restarting again..."
let YEAR_IN_SECONDS=365*24*60*60
sleep ${SLEEP_TIME:-$YEAR_IN_SECONDS}

