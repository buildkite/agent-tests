#!/bin/bash
set -e

if [ -z "$KEY_TO_SET" ]; then
  KEY_TO_SET="foo"
fi

if [ -z "$VALUE_TO_SET" ]; then
  VALUE_TO_SET="bar"
fi

echo "Key: $KEY_TO_SET"
echo "Value: $VALUE_TO_SET"

buildkite-agent meta-data set $KEY_TO_SET $VALUE_TO_SET

echo "All done!"
