ECHO --- *nix slashes

call buildkite-agent artifact download "fixtures/embedded/folder/AlfredHitchcock.jpg" "."

ECHO --- Windows slashes

call buildkite-agent artifact download "fixtures\embedded\folder\AlfredHitchcock.jpg" "."

ECHO --- With wildcards

call buildkite-agent artifact download "fixtures\embedded\folder\*" "."
call buildkite-agent artifact download "fixtures\embedded\**\*" "."
call buildkite-agent artifact download "fixtures\**\*" "."
call buildkite-agent artifact download "**\*" "."
