require 'capybara/cucumber'

#quando for trabalhar com end to end
# require 'capybara'
# require 'capybara/dsl'
# require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'

# World(Capybara::DSL)
# World(Capybara::RSpecMatchers)
World(PageObjects)

Capybara.register_driver :selenium_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--disable-gpu') if Gem.win_platform? # Para Windows.
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-dev-shm-usage')
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.javascript_driver = :selenium_chrome # Defina isto se você precisar de suporte a JavaScript
  config.app_host = 'http://localhost:3000'
  config.default_max_wait_time = 5
end
