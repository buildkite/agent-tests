#!/bin/bash
set -e

echo "--- :bundler: Bundling"
bundle install

echo -e "+++ :rspec: Running \033[33mspecs\033[0m"
bundle exec rake
