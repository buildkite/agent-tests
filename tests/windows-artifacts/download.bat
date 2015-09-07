ECHO --- Downloading fixtures/embedded/folder/AlfredHitchcock.jpg
MKDIR d1
CALL buildkite-agent artifact download "fixtures/embedded/folder/AlfredHitchcock.jpg" "d1"
IF %ERRORLEVEL% NEQ 0 EXIT %ERRORLEVEL%

ECHO --- Downloading fixtures/embedded/folder/*
MKDIR d2
CALL buildkite-agent artifact download "fixtures/embedded/folder/*" "d2"
IF %ERRORLEVEL% NEQ 0 EXIT %ERRORLEVEL%

ECHO --- Downloading fixtures/embedded/**/*
MKDIR d3
CALL buildkite-agent artifact download "fixtures/embedded/**/*" "d3"
IF %ERRORLEVEL% NEQ 0 EXIT %ERRORLEVEL%

ECHO --- Downloading fixtures/**/*
MKDIR d4
CALL buildkite-agent artifact download "fixtures/**/*" "d4"
IF %ERRORLEVEL% NEQ 0 EXIT %ERRORLEVEL%

ECHO --- Downloading **/*
MKDIR d5
CALL buildkite-agent artifact download "**/*" "d5"
IF %ERRORLEVEL% NEQ 0 EXIT %ERRORLEVEL%

ECHO --- Downloading fixtures\embedded\folder\AlfredHitchcock.jpg
MKDIR d6
CALL buildkite-agent artifact download "fixtures\embedded\folder\AlfredHitchcock.jpg" "d6"
IF %ERRORLEVEL% NEQ 0 EXIT %ERRORLEVEL%

ECHO --- Downloading fixtures\embedded\folder\*
MKDIR d7
CALL buildkite-agent artifact download "fixtures\embedded\folder\*" "d7"
IF %ERRORLEVEL% NEQ 0 EXIT %ERRORLEVEL%

ECHO --- Downloading fixtures\embedded\**\*
MKDIR d8
CALL buildkite-agent artifact download "fixtures\embedded\**\*" "d8"
IF %ERRORLEVEL% NEQ 0 EXIT %ERRORLEVEL%

ECHO --- Downloading fixtures\**\*
MKDIR d9
CALL buildkite-agent artifact download "fixtures\**\*" "d9"
IF %ERRORLEVEL% NEQ 0 EXIT %ERRORLEVEL%

ECHO --- Downloading **\*
MKDIR d10
CALL buildkite-agent artifact download "**\*" "d10"
IF %ERRORLEVEL% NEQ 0 EXIT %ERRORLEVEL%
