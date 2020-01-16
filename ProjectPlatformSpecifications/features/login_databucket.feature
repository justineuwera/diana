Feature: Databucket authorization

  Scenario: Log in databucket
    Given admin opens Databucket login page
    When admin enters valid credentials
    And admin clicks on sign in button 
    Then admin is logged in databucketPlatform