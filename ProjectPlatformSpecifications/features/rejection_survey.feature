Feature: rejection survey feature

Scenario: Taking the rejection survey

    Given user is on the completion or rejection survey
    When the user selects the rejection option
    And user click the submit button
    Then user is on the Termination page 