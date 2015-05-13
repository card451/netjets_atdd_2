Feature: New Loan Application

  Scenario: Consumer submits valid loan application
    When Consumer submits valid new loan application
    Then Confirmation message displayed

  Scenario Outline: Consumer submits an invalid loan application
    When Consumer submits a new loan application with <invalid criteria>
    Then Invalid criteria error message is displayed
    Examples:
    |invalid criteria|
    |0 loan amount   |
    |blank name      |
    |blank address   |


