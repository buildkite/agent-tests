ECHO --- Downloading fixtures/embedded/folder/AlfredHitchcock.jpg
call buildkite-agent artifact download "fixtures/embedded/folder/AlfredHitchcock.jpg" "."

ECHO --- Downloading fixtures/embedded/folder/*
call buildkite-agent artifact download "fixtures/embedded/folder/*" "."

ECHO --- Downloading fixtures/embedded/**/*
call buildkite-agent artifact download "fixtures/embedded/**/*" "."

ECHO --- Downloading fixtures/**/*
call buildkite-agent artifact download "fixtures/**/*" "."

ECHO --- Downloading **/*
call buildkite-agent artifact download "**/*" "."

ECHO --- Downloading fixtures\embedded\folder\AlfredHitchcock.jpg
call buildkite-agent artifact download "fixtures\embedded\folder\AlfredHitchcock.jpg" "."

ECHO --- Downloading fixtures\embedded\folder\*
call buildkite-agent artifact download "fixtures\embedded\folder\*" "."

ECHO --- Downloading fixtures\embedded\**\*
call buildkite-agent artifact download "fixtures\embedded\**\*" "."

ECHO --- Downloading fixtures\**\*
call buildkite-agent artifact download "fixtures\**\*" "."

ECHO --- Downloading **\*
call buildkite-agent artifact download "**\*" "."
