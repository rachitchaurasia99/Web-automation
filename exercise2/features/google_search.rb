require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'https://www.google.com'
search_box = driver.find_element(name: 'q')
search_box.send_key('dijkstras algorithm')
search_box.submit
driver.find_element(:partial_link_text, 'geeksforgeeks').click
driver.action.move_to(driver.find_element(id: 'tablist1-tab1')).perform
sleep 20