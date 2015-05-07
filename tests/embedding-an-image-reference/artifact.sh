#!/bin/bash

BASEDIR=$(dirname $0)

cp $BASEDIR/../../fixtures/meme.png .
cp $BASEDIR/../../fixtures/omg.gif .

$BASEDIR/../../utils/imgref.sh "artifact://omg.gif" "OMG!"
