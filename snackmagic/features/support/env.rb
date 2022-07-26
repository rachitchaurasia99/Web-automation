$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'lib'))
require 'selenium-webdriver'

require 'rspec/expectations'
require 'page-object'
Before do
  @browser = Selenium::WebDriver.for :chrome
  @browser.manage.window.maximize

end

After do
  @browser.quit
end
