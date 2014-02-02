require "dummy_rack"
require "bees"
require "capybara"
require "sauce"
require "sauce/capybara"

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Bees
end

Capybara.app = DummyRack
Capybara.current_driver = :sauce

Sauce.config do |c|
  c[:start_tunnel] = false
  c[:browser] = "Opera"
  c[:os] = "Windows 2008"
  c[:version] = "12"
end