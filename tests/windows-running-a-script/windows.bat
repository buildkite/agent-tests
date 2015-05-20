ECHO --- Environment Variables

SET

ECHO --- Other Things

ECHO Hello World!

ECHO --- Settings Data

call buildkite-agent build-data set foo bar

ECHO --- Joke

call buildkite-agent build-data get foo > __value.tmp
SET /p VALUE=<__value.tmp
DEL __value.tmp

ECHO A man walks into a %VALUE% and says, doh!
