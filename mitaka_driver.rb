require 'selenium-webdriver'
require 'rspec/expectations'
include RSpec::Matchers

def setup
  @driver = Selenium::WebDriver.for :remote, url:
    'http://172.17.0.2:4445'
end

def teardown
  @driver.quit
end

def run
  setup
  yield
  teardown
end

run do
  @driver.get 'http://www.google.com'
  expect(@driver.title).to eql 'The Internet'
  puts @driver.title
end
