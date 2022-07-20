Feature: Functionality of the data_magic gem
  Background:
    Given I have read the yaml file from features/yaml

  Scenario Outline: Getting basic data from the yaml
    Given We are on google form
    Then populate the page with data of <user>
    Then submit

    Examples:
      | user    |
      | "user1" |
      | "user2" |
      | "user3" |
