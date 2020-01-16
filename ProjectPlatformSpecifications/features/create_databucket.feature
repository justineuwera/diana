Feature: Create Databucket from survey platform

Background:
    Given Admin is on the survey platform
    
  Scenario: An Admin should create databucket from survey platform
    Given Admin selects one or more surveys
    When Admin clicks the create databucket button
    And Admin inserts title
    And Admin click on the next button
    And Admin click on save selection button
    Then databucket is created