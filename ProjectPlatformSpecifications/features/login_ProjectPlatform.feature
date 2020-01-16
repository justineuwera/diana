Feature: Project platform authorization

  Scenario: Logged in project platform
    Given Admin goes on project platform
    When the Admin inserts the valid credentials 
    And hits the sign in button
    Then project platform main page is opened    