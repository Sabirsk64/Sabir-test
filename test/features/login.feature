Feature: To test login functionality

  Background:
    Given User is on home screen

  Scenario Outline:To test user should be able to Login successfully
    When User puts "<Email ID>" and "<Password>" in the fields
    And User Clicks on Login button
    Then User is able to Login successfully

    Examples:
      | Email ID          | Password        |
      | example@gmail.com | example@pass123 |


  Scenario Outline:To test user should not be able to Login successfully with invalid username or password details
    When User puts "<Email ID>" and "<Password>" in the fields
    And User Clicks on Login button
    Then User is not be able to Login successfully

    #There can be n number of invalid values for Email ID field, some of them are listed below which will cover most of invalid value area
    # Only One password will be correct out of n number of values some of them is listed in the following example

    Examples:
      | Email ID           | Password        |
      | example@@gmail.com | example@pass123 |
      | example@mail.com   | example@pass123 |
      | 122222gmail.com    | example@pass123 |
      | 011111111111       | example@pass123 |
      | @gmail.com         | example@pass123 |
      | example@gmail.com  | !!!!#55@pass123 |
      | example@gmail.com  | ############### |
      | example@gmail.com  | 124254254524524 |
      | example@gmail.com  | absfdd@@2222222 |