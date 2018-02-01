#!/bin/bash

echo "The \$BUILDKITE_RETRY_COUNT value is $BUILDKITE_RETRY_COUNT"

if [[ "$BUILDKITE_RETRY_COUNT" == "0" ]]; then
  echo "Gonna fail 👎"
  exit 1
elif [[ "$BUILDKITE_RETRY_COUNT" == "1" ]]; then
  echo "Gonna fail 👎 1 last time"
  exit 2
else
  echo "Horray! It works! 👍"
  exit 0
fi
