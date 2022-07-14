require_relative '../pages/search_page.rb'
Given(/^a user goes to Amazon home page$/) do
  @amazon_page = SearchPage.new(@browser)
  @amazon_page.visit_amazon_site
end
 
When(/^a user search for "([^"]*)"$/) do |keyword|
  @amazon_page.search_box_element.wait_until(&:present?)
  @amazon_page.enter_search_keyword(keyword)
  @amazon_page.click_search_button
end
 
Then(/^amazon should click on "([^"]*)"$/) do |arg|
  @amazon_page.click_link(arg)
  sleep 20
  @amazon_page.close
end