Feature: Login

  Scenario: Successful login
    Given I am on the login page
    When I input the correct username
    And the correct password
    And click the login button
    Then I should see a correct login message

  Scenario: Unsuccessful login with wrong password
    Given I am on the login page
    When I input the correct username
    And a incorrect password
    And click the login button
    Then I should see a failed login message
