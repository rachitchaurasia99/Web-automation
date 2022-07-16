Feature: Steam Search functionality
  Scenario: searching mobile phones on Amazon
    Given a user goes to Steam home page
    When a user search for "Forza Horizon 5"
    Then steam should click on "Forza Horizon 5"
