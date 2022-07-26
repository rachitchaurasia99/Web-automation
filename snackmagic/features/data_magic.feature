Feature: Snackmagic ordering automation

  Scenario Outline: Ordering snacks from snackmagic
    Given We are on snackmagic homepage
    Then fill user details and login
    Then submit

    Examples:
      | user    |
      | "user1" |
