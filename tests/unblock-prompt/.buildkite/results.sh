echo "--- Version"
buildkite-agent meta-data get version

echo "--- Food"
buildkite-agent meta-data get taco

echo "--- Deploy Target"
buildkite-agent meta-data get deploy-target

echo "--- Notify Team"
buildkite-agent meta-data get notify-team
