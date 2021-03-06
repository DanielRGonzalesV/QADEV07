Feature: Workspace

  Background: I login into pivotal
    Given I login with credentials valid
    When I am on Pivotal Dashboard page

  Scenario: The "Create Workspace" button, returns a Create Workspace form

    Given click on the Create Workspace button of the Dashboard
    Then I expect a Create Workspace form

  Scenario: Create a project with a name valid

    Given I am on Pivotal Create Workspace form
    When I fill with My Workspace7 the name Workspace field
    And click on the Create Workspace button of the Form
    Then the display name equals to My Workspace7