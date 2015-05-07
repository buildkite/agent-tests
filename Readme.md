# Buildkite Agent Tests

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

## Setting AGENT_TEST

There is a local [post-checkout agent hook](.buildkite/hooks/post-checkout) which changes directory into the correct test using the `AGENT_TEST` environment variable

## Usage

Create a new project based on [.buildkite/steps.json](.buildkite/steps.json):

```bash
$ export BUILDKITE_ACCESS_TOKEN=xxx
$ export BUILDKITE_ORG=my-org
$ curl "https://api.buildkite.com/v1/organizations/$BUILDKITE_ORG/projects" \
  -i \
  -X POST \
  -H "Authorization: Bearer $BUILDKITE_ACCESS_TOKEN" \
  -d@- <<JSON
  {
    "name": "Agent Tests",
    "repository": "https://github.com/buildkite/agent-tests.git",
    "steps": $(cat .buildkite/steps.json)
  }
JSON
```

Start an agent (on a host with Docker support) with meta-data `agent-test`:

```bash
$ buildkite-agent start --token xxx --meta-data agent-test
```

and then trigger a build.

## Copyright

Copyright (c) 2015 Buildkite Pty Ltd. See LICENSE for details.
