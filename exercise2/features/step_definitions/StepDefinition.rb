require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
Given(/^We are on google home page$/) do
  driver.navigate.to 'https://www.google.com'
end

When("We type {string} in search bar") do |string|
  @search_box = driver.find_element(name: 'q')
  @search_box.send_key(string)
end

Then("hit enter") do
  @search_box.submit
end

Then("It should redirect to {string}") do |string|
  driver.find_element(:partial_link_text, string).click
end

Then("It should select the C++ tab") do 
  driver.action.move_to(driver.find_element(id: 'tablist1-tab1')).perform
  sleep 20
end