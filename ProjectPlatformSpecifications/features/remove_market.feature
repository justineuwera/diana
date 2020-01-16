Feature: Remove the market from Project
 
  Background:
    Given Admin is on the project platform
    
  Scenario: Admin should be able to remove the market from project
    Given Admin click on one project
    When Admin clicks the remove button
    Then the market must be removed from project