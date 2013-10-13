require 'rspec/expectations'
require 'capybara/cucumber'
require 'capybara/poltergeist'

# setting default browser
if ENV['IN_BROWSER']
  # To select non-headless tests using Selenium/Webdriver
  Capybara.default_driver = :selenium
  # Use PAUSE = 1 bundle exec cucumber to get 1 sec 
  # pause between each step
  AfterStep do
    sleep (ENV['PAUSE'] || 0).to_i
  end
else
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(
      app,
      window_size: [1280, 1024]#,
      #debug: true
    )
    end
  Capybara.default_driver	= :poltergeist
  Capybara.default_driver	= :poltergeist
end

#Capybara.default_selector : css
Capybara.default_wait_time = 120

# Configure base URLs
# $ecommerce_base_url = 'http://www.pontofrio.com.br/'
