# Exercise : Write a test script using selenium webdriver
require 'selenium-webdriver'
require 'faraday'
class Browserstack
  def navigate(driver, url)
    driver.navigate.to url
  end

  def get_element(driver, type, value)
    driver.find_element(type,value)
  end

  def command(element, message)
    element.send_key(message)
  end
  
  def sign_in(button)
    button.click
  end

  def login(user_email, user_password)
    driver = Selenium::WebDriver.for :chrome
    navigate(driver, 'https://www.browserstack.com/users/sign_in')
    username = get_element(driver, :id, 'user_email_login')
    password = get_element(driver, :id, 'user_password')
    login = get_element(driver, :name, 'commit')

    command(username, user_email)
    command(password, user_password)

    sign_in(login)

    sleep 20
  end
 
end

Browserstack.new.login('19102025@mail.jiit.ac.in', 'mypassword@123')
