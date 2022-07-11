require 'selenium-webdriver'
def navigate(driver, url)
  driver.navigate.to url
end

def get_element(driver, type, value)
  driver.find_element(type,value)
end

def command(element, message)
  element.send_key(message)
end
driver = Selenium::WebDriver.for :chrome
url = 'https://www.google.com'
navigate(driver, url)
search_box = get_element(driver, :name, 'q')
command(search_box,'Noida')
search_box.submit
get_element(driver,:partial_link_text, 'Wikipedia').click
sleep 20