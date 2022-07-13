require 'selenium-webdriver'
require_relative '../google_search.rb'
driver = Selenium::WebDriver.for :chrome
Given(/^We are on google home page$/) do
  driver.navigate.to 'https://www.google.com'
end

Given('We type {string} in search bar') do |query|
  search_box = driver.find_element(:name, 'q')
  search_box.send_key(query)
end

When('hit enter') do
  search_box.submit
end

Then('The results should be equal to {string}') do |query|
  get_element(driver,:partial_link_text, 'geeksforgeeks').click
end

Given('I am on geeksforgeeks site') do |query|
  driver.action.move_to(get_element(driver,:id,'tablist1-tab1')).perform
end