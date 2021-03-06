Feature: Workspace with Projects

  Background: I have projects created
    Given I login with credentials valid
    When  I have the next parameters:
      | name   | project3444 |
      | public | true        |
    When I have the /projects endpoint
    When I sent a POST request
    And stored as MyProject

  Scenario: Add project to Workspace created

    Given I am on Pivotal Create Workspace form
    When I fill with My Workspace8 the name Workspace field
    And click on the Create Workspace button of the Form
    When I click on Add Projects button
    And I  click on list projects icon
    When I select the project created previously
    And I click on Save Workspace button
    Then I expect a workspace with the project selected