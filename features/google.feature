Feature: Google Search
    Perform a Google search

Scenario: Users can perform a search on Google
    Given I open the Google search page
    When I search for "Liferay"
    Then I should see the results page