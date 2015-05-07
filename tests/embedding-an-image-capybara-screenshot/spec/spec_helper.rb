require 'capybara/rspec'
require 'capybara/poltergeist'
require 'capybara-screenshot'
require 'capybara-inline-screenshot/rspec'

Capybara.configure do |config|
  config.default_driver = :poltergeist
end

CapybaraInlineScreenshot.base_artifact_dir = File.expand_path(File.join(__FILE__, "../../"))

Capybara.save_and_open_page_path = File.join(CapybaraInlineScreenshot.base_artifact_dir, "tmp/screenshots")
