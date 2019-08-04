Feature: Validate that admin functionality is working

  Background:  Log in as a Global Administrator
    Given I visit "/user/login"
    And I fill in "Username" with "imalikova01"
    And I fill in "Password" with "testuser"
    And I press "Log in"

  Scenario:  Check that /admin/config can be accessed without 500 HTTP error
    When I visit "/admin/config"
    Then I should not get a "500" HTTP response
    And I should get a "200" HTTP response
    And I should see the heading "Configuration"
