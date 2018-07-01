require 'rubygems'
require 'selenium-webdriver'
class LoginStepDefinitions
  driver = Selenium::WebDriver.for :chrome

  When /^User puts \"([^\"]*)\" and \"([^\"]*)\" in the fields$/ do |emailid, password|
    driver.find_element(id: account_email).send_keys(emailid)
    driver.find_element(id: account_password_digest).send_keys(password)
  end

  Then /^User is able to Login successfully$/ do
    driver.find_element(id: logout).displayed?
  end

  Then /^User is not be able to Login successfully$/ do
    logout_button_displayed = driver.find_element(id: logout).displayed?
  rescue
    logout_button_displayed = false
  end

  # I have used dumy id below as login_account
  And /^User Clicks on Login button$/ do
    driver.find_element(id: login_button).click()
  end
end