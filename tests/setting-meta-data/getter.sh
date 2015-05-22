#!/bin/bash
set -e

if [ -z "$KEY_TO_GET" ]; then
  KEY_TO_GET="foo"
fi

echo "Key: $KEY_TO_GET"

echo `buildkite-agent meta-data get $KEY_TO_GET`
