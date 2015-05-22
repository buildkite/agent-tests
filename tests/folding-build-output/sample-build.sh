#!/bin/bash
set -e

echo '--- :bundler: Bundling'

COUNTER=0
while [  $COUNTER -lt 3 ]; do
  echo Bundling $COUNTER
  let COUNTER=COUNTER+1
  sleep 1
done

echo '--- :art: Compiling assets'

COUNTER=0
while [  $COUNTER -lt 10 ]; do
  echo Compiling $COUNTER
  let COUNTER=COUNTER+1
  sleep 0.2
done

echo -e "+++ :rspec: Running \033[33mspecs\033[0m"

COUNTER=0
while [  $COUNTER -lt 10 ]; do
  printf "."
  let COUNTER=COUNTER+1
  sleep 0.1
done

echo -e "\n"

echo '--- :shipit: Deploying'

COUNTER=0
while [  $COUNTER -lt 10 ]; do
  echo Deploying... $COUNTER
  let COUNTER=COUNTER+1
  sleep 0.2
done

echo '^^^ +++'

echo '--- :newrelic: Notifiying NewRelic'

sleep 3
echo "Notified!!"

echo '--- :bugsnag: Notifiying Bugsnag'

sleep 2
echo "Notified!!"
