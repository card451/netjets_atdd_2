Feature: Check Loan Status

  Scenario Outline: Consumer searches for loan
    Given Loan Applications in <status> status exists for consumer
    When Consumer searches for loan
#    When Consumers enters <name>
#    And Consumer enters <address>
    Then Loan Status <status> is displayed
    Examples:
    | status  |
    | Approved|
    | Pending |
    | Denied  |

  Scenario Outline: Consumer performs invalid search for loan
    When Consumers searches for a loan with <invalid_search_criteria>
    Then No Results found message is displayed
  Examples:
  |invalid_search_criteria|
  |invalid_name|
  |invalid_address|
  |invalid_name_and_address|
  |blank_name_and_address|

# Scenario: Consumer searches for loan with invalid name and invalid address

# Scenario: Consumer searches for loan with 0 results

  Scenario: Consumer searches for loan with multiple results
    Given Multiple Loan Applications exist for consumers
    When Consumers enters name
    And Consumer enters address
    And Consumer selects search
    Then Multiple Loan Statuses are displayed

