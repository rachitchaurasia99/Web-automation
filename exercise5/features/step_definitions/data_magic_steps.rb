require 'selenium-webdriver'
include DataMagic
Given /^I have read the yaml file from features\/yaml$/ do
  @driver = Selenium::WebDriver.for :chrome
  DataMagic.yml_directory = 'features/yaml'
  DataMagic.load "example.yml"
end

Given /^We are on google homepage$/ do
  @driver.navigate.to 'https://www.google.com' 
  sleep 10
end
Then("search for {string}") do |search_keyword|
  queries = data_for "example/#{search_keyword}"
  search = @driver.find_element(:name => 'q')
  search.send_key(queries['search'])
  sleep 2
  search.submit
  sleep 2
  # @driver.quit
end