#!/bin/bash

[[ -d tmp ]] && rm -r tmp

bundle install && bundle exec rspec
