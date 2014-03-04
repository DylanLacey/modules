require "dummy_rack"
require "capybara"
require "sauce"
require "sauce/capybara"
require "helper"

Sauce.config do |c|
  c[:start_tunnel] = false
  c[:browser] = "Opera"
  c[:os] = "Windows 2008"
  c[:version] = "12"
end

RSpec.configure do |config|
  config.include Capybara::DSL
end

Capybara.app = DummyRack
Capybara.default_driver = :sauce
