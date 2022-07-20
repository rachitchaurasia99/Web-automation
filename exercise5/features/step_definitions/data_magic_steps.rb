require 'selenium-webdriver'

Given /^I have read the yaml file from features\/yaml$/ do
 @google_form = Form.new(@browser)
end

Given /^We are on google form$/ do
   @google_form.visit
  sleep 2
end
Then("populate the page with data of {string}") do |user|
  @google_form.populate(user)
  sleep 3
end
Then("submit") do 
  @google_form.submit
  sleep 2
  @google_form.close
end