require_relative '../pages/search_page.rb'
Given(/^a user goes to Steam home page$/) do
  @steam_page = SearchPage.new
  @steam_page.load
end
 
When(/^a user search for "([^"]*)"$/) do |keyword|
  @steam_page.enter_search_keyword(keyword)
  @steam_page.click_search_button
end
 
Then(/^steam should click on "([^"]*)"$/) do |arg|
  @steam_page.choose_link(arg)
end