ECHO --- Downloading fixtures/embedded/folder/AlfredHitchcock.jpg
mkdir d1
call buildkite-agent artifact download "fixtures/embedded/folder/AlfredHitchcock.jpg" "d1"

ECHO --- Downloading fixtures/embedded/folder/*
mkdir d2
call buildkite-agent artifact download "fixtures/embedded/folder/*" "d2"

ECHO --- Downloading fixtures/embedded/**/*
mkdir d3
call buildkite-agent artifact download "fixtures/embedded/**/*" "d3"

ECHO --- Downloading fixtures/**/*
mkdir d4
call buildkite-agent artifact download "fixtures/**/*" "d4"

ECHO --- Downloading **/*
mkdir d5
call buildkite-agent artifact download "**/*" "d5"

ECHO --- Downloading fixtures\embedded\folder\AlfredHitchcock.jpg
mkdir d6
call buildkite-agent artifact download "fixtures\embedded\folder\AlfredHitchcock.jpg" "d6"

ECHO --- Downloading fixtures\embedded\folder\*
mkdir d7
call buildkite-agent artifact download "fixtures\embedded\folder\*" "d7"

ECHO --- Downloading fixtures\embedded\**\*
mkdir d8
call buildkite-agent artifact download "fixtures\embedded\**\*" "d8"

ECHO --- Downloading fixtures\**\*
mkdir d9
call buildkite-agent artifact download "fixtures\**\*" "d9"

ECHO --- Downloading **\*
mkdir d10
call buildkite-agent artifact download "**\*" "d10"
