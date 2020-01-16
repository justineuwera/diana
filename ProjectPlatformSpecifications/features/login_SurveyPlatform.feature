Feature: Survey platform authorization

  Scenario: Logged in survey platform
    Given Admin goes on Survey Platform
    When Admin inserts the valid credential  
    And Clicks the sign in button
    Then survey platform main page is opened 