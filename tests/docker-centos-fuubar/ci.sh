#!/bin/bash
set -e

echo "--- Moving to the test directory"
BASEDIR=$(dirname $0)
cd $BASEDIR

echo "--- :bundler: Bundling"
bundle install

echo -e "+++ :rspec: Running \033[33mspecs\033[0m"
bundle exec rake
