# Buildkite Agent Tests

Runs various sanity checks against the Buildkite Agent. There is a local [post-checkout agent hook](.buildkite/hooks/post-checkout) which changes the working directory to the correct test directory based on the value of the `AGENT_TEST` environment variable.

## Tests

* [executing-a-command](tests/executing-a-command)
<br>A file that can be output using a build step command (rather than a script)

* [running a script](tests/running-a-script)
<br>Simple scripts to test permissions, directories, Docker Compose, etc.

* [docker-centos-fuubar](tests/docker-centos-fuubar)
<br>Runs an example Rspec spec with the Fuubar formatter (which outputs a progress bar)

* [embedding-an-image](tests/embedding-an-image)
<br>Tests embedding an image directly in the build log using [iTerm’s imgcat](http://iterm2.com/images.html#/section/home)

* [embedding-an-image-reference](tests/embedding-an-image-reference)
<br>Tests images uploaded as artifacts and external images using [Terminal’s `1338` escape code](http://buildkite.github.io/terminal/)

* [embedding-an-image-capybara-screenshot](tests/embedding-an-image-capybara-screenshot)
<br>Tests images embedded using a Capybara screenshot helper

## Copyright

Copyright (c) 2015 Buildkite Pty Ltd. See LICENSE for details.
