Feature: Creating supermaster functionality

Background:
  Given Admin is on the project platform page

  Scenario: Create supermaster
    Given Admin select one or more projects
    When Admin clicks on create supermaster button
    Then project is opened with the new supermaster