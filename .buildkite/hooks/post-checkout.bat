IF "%AGENT_TEST%" == "" (
  echo "\%AGENT_TEST\% has not been set"
  exit 1
)

SET BUILDKITE_BUILD_CHECKOUT_PATH="tests/%AGENT_TEST%"
