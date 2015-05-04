require 'capybara/rspec'
require 'capybara/poltergeist'
require 'capybara-screenshot'
require 'capybara-screenshot/rspec'

Capybara.configure do |config|
  config.default_driver = :poltergeist
end

SCREENSHOT_PATH = "tmp/screenshots"

Capybara.save_and_open_page_path = File.expand_path(File.join(__FILE__, "../../", SCREENSHOT_PATH))

module BuildkiteArtifactScreenshotReporter
  require "base64"

  extend Capybara::Screenshot::RSpec::BaseReporter

  enhance_with_screenshot :example_failed

  def example_failed_with_screenshot(notification)
    example_failed_without_screenshot(notification)

    return unless (screenshot = notification.example.metadata[:screenshot])

    name = File.basename(screenshot[:image])

    if ENV['BUILDKITE']
      output.puts "\e]1338;url='artifact://#{File.join(SCREENSHOT_PATH, name)}';alt='#{name}'\a"
    else
      image = Base64.encode64(File.read(screenshot[:image])).gsub(/\n/, '')
      output.puts "\e]1337;File=#{name}:#{image}\a"
    end
  end
end

Capybara::Screenshot::RSpec::REPORTERS["RSpec::Core::Formatters::ProgressFormatter"] = BuildkiteArtifactScreenshotReporter
Capybara::Screenshot::RSpec::REPORTERS["RSpec::Core::Formatters::DocumentationFormatter"] = BuildkiteArtifactScreenshotReporter
