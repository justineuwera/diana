Feature: Report dashboard extraction from databucket

Background:
    Given Admin is on the databucket platform
    
  Scenario: An Admin should extract the report from databucket
    Given Admin clicks on the databucket
    When Admin click on to Report Dashboard button 
    And Admin click on new reportdashboard extraction button
    And Admin fills the title and description fields
    And Admin click on create reportdashboard extraction button
    Then the new report is created