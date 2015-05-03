#!/bin/bash

function print_image_ref {
    printf '\033]1338;url='"$1"';alt='"$2"'\a\n'
}

if [ $# -le 1 ]; then
  echo "Usage: imgref filename description"
  exit 1
fi

print_image_ref "$1" "$2"

exit 0
