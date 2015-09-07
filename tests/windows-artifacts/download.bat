ECHO --- Downloading fixtures/embedded/folder/AlfredHitchcock.jpg
call buildkite-agent artifact download "fixtures/embedded/folder/AlfredHitchcock.jpg" "d1"

ECHO --- Downloading fixtures/embedded/folder/*
call buildkite-agent artifact download "fixtures/embedded/folder/*" "d2"

ECHO --- Downloading fixtures/embedded/**/*
call buildkite-agent artifact download "fixtures/embedded/**/*" "d3"

ECHO --- Downloading fixtures/**/*
call buildkite-agent artifact download "fixtures/**/*" "d4"

ECHO --- Downloading **/*
call buildkite-agent artifact download "**/*" "d5"

ECHO --- Downloading fixtures\embedded\folder\AlfredHitchcock.jpg
call buildkite-agent artifact download "fixtures\embedded\folder\AlfredHitchcock.jpg" "d6"

ECHO --- Downloading fixtures\embedded\folder\*
call buildkite-agent artifact download "fixtures\embedded\folder\*" "d7"

ECHO --- Downloading fixtures\embedded\**\*
call buildkite-agent artifact download "fixtures\embedded\**\*" "d8"

ECHO --- Downloading fixtures\**\*
call buildkite-agent artifact download "fixtures\**\*" "d9"

ECHO --- Downloading **\*
call buildkite-agent artifact download "**\*" "d10"
