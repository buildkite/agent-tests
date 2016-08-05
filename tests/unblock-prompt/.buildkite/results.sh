echo "--- Version"
echo `buildkite-agent meta-data get version`

echo "--- Food"
echo `buildkite-agent meta-data get taco`

echo "--- Deploy Target"
echo `buildkite-agent meta-data get deploy-target`

echo "--- Notify Team"
echo `buildkite-agent meta-data get notify-team`
