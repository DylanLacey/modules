require "dummy_rack"
require "bees"
require "capybara"
require "sauce"
require "sauce/capybara"

Sauce.config do |c|
  c[:start_tunnel] = false
  c[:browser] = "Opera"
  c[:os] = "Windows 2008"
  c[:version] = "12"
end

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Bees
end

Capybara.app = DummyRack
Capybara.default_driver = :sauce