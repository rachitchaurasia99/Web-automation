Feature: Amazon Search functionality
  Scenario: searching mobile phones on Amazon
    Given a user goes to Amazon home page
    When a user search for "i phone"
    Then amazon should return result for "i phone"
    And Click on iphone 12
