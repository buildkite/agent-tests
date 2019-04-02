require 'capybara/rspec'
require 'capybara/poltergeist'
require 'capybara-inline-screenshot/rspec'

Capybara.configure do |config|
  config.default_driver = :poltergeist
end
