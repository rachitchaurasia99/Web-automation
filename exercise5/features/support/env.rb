$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'lib'))

require 'rspec/expectations'
require 'data_magic'
require 'page-object'
Before do
  @browser = Selenium::WebDriver.for :chrome
  @browser.manage.window.maximize
  DataMagic.yml_directory = 'features/yaml'
  DataMagic.load "example.yml"
end

After do
  @browser.quit
end
