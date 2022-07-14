require 'watir'
require 'page-object'
Before do
  @browser = Selenium::WebDriver.for :chrome
  @browser.manage.window.maximize
end