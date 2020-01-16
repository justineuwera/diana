Feature: completion survey feature

Scenario: Taking the completion survey

    Given user is on the completion,rejection survey
    When the user selects the completion option
    And user selects the submit button
    Then user is on the Thank you page (edited) 