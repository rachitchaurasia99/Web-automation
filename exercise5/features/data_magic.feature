Feature: Functionality of the data_magic gem
  Background:
    Given I have read the yaml file from features/yaml

  Scenario Outline: Getting basic data from the yaml
    Given We are on google homepage
    Then search for <search_keyword>

    Examples:
      | search_keyword |
      | "query1"       |
      | "query2"       |
