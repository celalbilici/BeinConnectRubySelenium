#encoding:UTF-8

require 'cucumber'

require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'rspec'



Capybara.run_server = true
Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
Capybara.default_selector = :css
Capybara.default_max_wait_time = 5
Capybara.ignore_hidden_elements = false
Capybara.exact = true
Capybara.app_host = 'https://www.google.com.tr/'
World(Capybara::DSL)





Capybara.register_driver :selenium do |app|

  Capybara::Selenium::Driver.new(app, :browser => :chrome,:switches => %w[--disable-web-security --start-maximized])

end
