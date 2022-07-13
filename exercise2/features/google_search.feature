Feature: Google search
  Scenario: Doing a google search for Dijkstra's Algorithm
    Given We are on google home page
    When We type in search bar
    And hit enter
    Then We should have search results
  Scenario: Selecting link with keyword Geeksforgeeks
    Given We are on search results of previous scenario
    When we click on the Geeksforgeeks link
    Then It should redirect to the selected link
  Scenario: Scrolling to C++ code tab
    Given We are on top of the Geeksforgeeks page
    When we click on the C++ code tab
    Then It should scroll to the C++ code tab
