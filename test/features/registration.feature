Feature: To test registration functionality

  Background:
    Given User is on home screen

  Scenario Outline:To test user should be able to register successfully
    When User click on create account option
    And User enters "<name>","<surname>","<dateofbirth>","<street>","<housenumber>","<postcode>"
    And User click on Confirm button
    Then User is able to register successfully

    Examples:
      | name  | surname | dateofbirth | street           | housenumber | postcode |
      | sabir | shaikh  | 1990-12-27  | Van goedhartalan | 512         | 1181 LM  |

    #Considering validation will be done after clicking on confirm button.

  Scenario Outline:To test user should not be able to register when name is invalid
    When User click on create account option
    And User enters "<name>","<surname>","<dateofbirth>","<street>","<housenumber>","<postcode>"
    And User click on Confirm button
    Then User should not be able to register successfully

    Examples:
      | name   | surname | dateofbirth | street           | housenumber | postcode |
      | &^^%$  | shaikh  | 1990-12-27  | Van goedhartalan | 512         | 1181 LM  |
      | 223434 | shaikh  | 1990-12-27  | Van goedhartalan | 512         | 1181 LM  |
      | Sabir  | &^^%$   | 1990-12-27  | Van goedhartalan | 512         | 1181 LM  |
      | Sabir  | 22123   | 1990-12-27  | Van goedhartalan | 512         | 1181 LM  |

  Scenario Outline:To test user should not be able to register when date of birth is invalid
    When User click on create account option
    And User enters "<name>","<surname>","<dateofbirth>","<street>","<housenumber>","<postcode>"
    And User click on Confirm button
    Then User should not be able to register successfully

    #putting different (negative)combinations of in date of birth field

    Examples:
      | name  | surname | dateofbirth | street           | housenumber | postcode |
      | Sabir | shaikh  | 0000-00-00  | Van goedhartalan | 512         | 1181 LM  |
      | Sabir | shaikh  | 1990-10-32  | Van goedhartalan | 512         | 1181 LM  |
      | Sabir | shaikh  | 1990-13-27  | Van goedhartalan | 512         | 1181 LM  |
      | Sabir | shaikh  | 1990-02-30  | Van goedhartalan | 512         | 1181 LM  |
      | Sabir | shaikh  | 1990-06-31  | Van goedhartalan | 512         | 1181 LM  |
      | Sabir | shaikh  | 0000-12-12  | Van goedhartalan | 512         | 1181 LM  |
      | Sabir | shaikh  | 0020-12-12  | Van goedhartalan | 512         | 1181 LM  |
      | Sabir | shaikh  | efrd-cd-qq  | Van goedhartalan | 512         | 1181 LM  |
      | Sabir | shaikh  | 1990-12-ab  | Van goedhartalan | 512         | 1181 LM  |
      | Sabir | shaikh  | 1990-cd-12  | Van goedhartalan | 512         | 1181 LM  |
      | Sabir | shaikh  | abcd-12-12  | Van goedhartalan | 512         | 1181 LM  |
      | Sabir | shaikh  | ##^4-@$-##  | Van goedhartalan | 512         | 1181 LM  |


  Scenario Outline:To test user should not be able to register when address is invalid
    When User click on create account option
    And User enters "<name>","<surname>","<dateofbirth>","<street>","<housenumber>","<postcode>"
    And User click on Confirm button
    Then User should not be able to register successfully

    #putting different (negative)combinations of in street,House Number and postcode field

    Examples:
      | name  | surname | dateofbirth | street           | housenumber | postcode |
      | Sabir | shaikh  | 1990-12-27  | Van goedhartalan | 512         | 1181 LM  |
      | Sabir | shaikh  | 1990-12-27  | Van goe#$@rtalan | 512         | 1181 LM  |
      | Sabir | shaikh  | 1990-12-27  | ** &*&**&*&*&*&  | 512         | 1181 LM  |
      | Sabir | shaikh  | 1990-12-27  | Van goe#$@rtalan | %%^         | 1181 LM  |
      | Sabir | shaikh  | 1990-12-27  | Van goe#$@rtalan | &44         | 1181 LM  |
      | Sabir | shaikh  | 1990-12-27  | Van goe#$@rtalan | 512         | &&81 LM  |
      | Sabir | shaikh  | 1990-12-27  | Van goe#$@rtalan | 512         | &#$% ^&  |
      | Sabir | shaikh  | 1990-12-27  | Van goe#$@rtalan | 512         | 1181 &5  |























