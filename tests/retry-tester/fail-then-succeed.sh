#!/bin/bash

echo "The \$BUILDKITE_RETRY_COUNT value is $BUILDKITE_RETRY_COUNT"

if [[ "$BUILDKITE_RETRY_COUNT" == "0" ]]; then
  echo "Gonna fail 👎"
  exit 1
else
  echo "Horray! It works! 👍"
  exit 0
fi
