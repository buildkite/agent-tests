# Buildkite Agent Tests

## Tests

* [executing-a-command](https://github.com/buildkite/agent-tests/tree/master/tests/executing-a-command)
<br>A file that can be output using a build step command (rather than a script)

* [running a script](https://github.com/buildkite/agent-tests/tree/master/tests/running-a-script)
<br>Simple scripts to test permissions, directories, Docker Compose, etc.

* [docker-centos-fuubar](https://github.com/buildkite/agent-tests/tree/master/tests/docker-centos-fuubar)
<br>Runs an example Rspec spec with the Fuubar formatter (which outputs a progress bar)

* [embedding-an-image](https://github.com/buildkite/agent-tests/tree/master/tests/embedding-an-image)
<br>Tests embedding an image directly in the build log using [iTerm’s imgcat](http://iterm2.com/images.html#/section/home)

* [embedding-an-image-reference](https://github.com/buildkite/agent-tests/tree/master/tests/embedding-an-image-reference)
<br>Tests images uploaded as artifacts and external images using [Terminal’s `1338` escape code](http://buildkite.github.io/terminal/)

* [embedding-an-image-capybara-screenshot](https://github.com/buildkite/agent-tests/tree/master/tests/embedding-an-image-capybara-screenshot)
<br>Tests images embedded using a Capybara screenshot helper

## Copyright

Copyright (c) 2015 Buildkite Pty Ltd. See LICENSE for details.
