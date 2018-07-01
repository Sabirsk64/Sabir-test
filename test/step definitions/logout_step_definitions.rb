require 'rubygems'
require 'selenium-webdriver'

class LogoutStepDefinitions
  driver = Selenium::WebDriver.for :chrome
  Given /^User is already log in$/ do
    driver.find_element(id: account_email).send_keys(emailid)
    driver.find_element(id: account_password_digest).send_keys(password)
    driver.find_element(id: login_button).click()
  end

  When /^User clicks on Logout button$/ do
    driver.find_element(id: logout).click()
  end

  Then /^User must be logged out$/ do
    driver.find_element(id: login_button).displayed?
    driver.find_element(id: account_email).displayed?
  end
end