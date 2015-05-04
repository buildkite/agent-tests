require 'capybara/rspec'

require 'capybara/poltergeist'

require 'capybara-screenshot'
require 'capybara-screenshot/rspec'

Capybara.configure do |config|
  config.default_driver = :poltergeist
end

Capybara.save_and_open_page_path = File.expand_path(File.join(__FILE__, "../../tmp/screenshots"))
