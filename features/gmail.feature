Feature: Launch google page
  Scenario: Login to google account
    Given Launch google page
    When Click on Gmail link
    And  Enter user name
    #And  Enter Password
    #And  Click on signup button
    Then User is able to login successful