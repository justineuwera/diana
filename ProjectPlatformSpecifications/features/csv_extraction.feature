Feature: Csv file extraction from databucket

Background:
    Given Admin is on the databucket platform main page
    
  Scenario: An Admin should extract the csv file from databucket
    Given Admin clicks on databucket
    When Admin clicks on csv button
    And Admin click on extract split csv button/ extract unified csv button
    And Admin clicks on the new csv created
    Then the new csv is extracted