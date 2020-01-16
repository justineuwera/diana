Feature: Clear the selected projects
 
  Background:
    Given Admin is on the project platform main page
      
  Scenario: Admin should be able to deselect projects
    Given Admin selects the projects
    When Admin clicks the clear Selection button
    Then the projects must be deselected