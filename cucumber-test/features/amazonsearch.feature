Feature: Amazon Search functionality
  Scenario: searching mobile phones on Amazon
    Given a user goes to Amazon home page
    When a user search for "iphone"
    Then amazon should click on "iPhone 11"
