#!/bin/bash

BASEDIR=$(dirname $0)

function print_image_ref {
    printf '\033]1338;url='"$1"';alt='"$2"'\a\n'
}

cp $BASEDIR/../../fixtures/meme.png .
cp $BASEDIR/../../fixtures/omg.gif .

print_image_ref "artifact://meme.png" "Meme!"

print_image_ref "artifact://omg.gif" "OMG!"
