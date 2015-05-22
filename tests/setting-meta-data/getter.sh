#!/bin/bash
set -e

if [ -z "$KEY_TO_GET" ]; then
  KEY_TO_GET="foo"
fi

VALUE=$(buildkite-agent meta-data get $KEY_TO_GET)

echo "Key: $KEY_TO_GET"
echo "Value returned: $VALUE"
