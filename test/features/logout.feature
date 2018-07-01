Feature: To test logout functionality

  Scenario:To test user should be able to logout successfully
    Given User is already log in
    When User clicks on Logout button
    Then User must be logged out
