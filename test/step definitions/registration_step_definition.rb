require 'rubygems'
require 'selenium-webdriver'

class RegistrationStepDefinition

  driver = Selenium::WebDriver.for :chrome

  Given /^User is on home screen$/ do
    driver.get 'www.example.com'
  end

  # I have used dumy id below as create_account
  When /^User click on create account option$/ do
    driver.find_element(id: create_account).click()
  end

  Then /^User is able to register successfully$/ do
    driver.find_element(id: logout).displayed?
  end

  Then /^User should not be able to register successfully$/ do
    logout_button_displayed = driver.find_element(id: logout).displayed?
  rescue
    logout_button_displayed = false
  end

  And /^User enters \"([^\"]*)\",\"([^\"]*)\",\"([^\"]*)\",\"([^\"]*)\",\"([^\"]*)\",\"([^\"]*)\"$/ do |name, surname, dateofbirth, street, housenumber, postcode|
    driver.find_element(id: profile_name).send_keys(name)
    driver.find_element(id: profile_surname).send_keys(surname)
    driver.find_element(id: profile_date_of_birth).send_keys(dateofbirth)
    driver.find_element(id: address_street).send_keys(street)
    driver.find_element(id: address_house_number).send_keys(housenumber)
    driver.find_element(id: address_postcode).send_keys(postcode)
  end

  # I have used dumy id below as confirm_account
  And /^User click on Confirm button$/ do
    driver.find_element(id: confirm_account).click()
  end
end