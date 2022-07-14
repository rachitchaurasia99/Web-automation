Feature: Google search
  Scenario: Doing a google search for Dijkstra's Algorithm
    Given We are on google home page
    When We type "dijkstras" in search bar
    Then hit enter
    Then It should redirect to 'geeksforgeeks'
    Then It should select the C++ tab
