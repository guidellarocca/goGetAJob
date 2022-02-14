Feature: Employee can add a job to favorites

  As an employee
  I want to add a favorite
  so that I can see all my favorite jobs

  Scenario: Employee adds a job to favorites

    Given a company
    Given an employee
    Given a job

    When I am on the home page
    And I follow "Sign In"
    Then I should be on the Sign In page

    When I fill in "user_email" with "mrrobot@mail.com"
    And I fill in "user_password" with "password"
    And I press "Log in"
    Then I should be on the home page

    When I am on the Jobs page
    And I follow "All"
    And I should see "FrontEnd developer"
    And I follow "View"
    Then I should be on the Job page

    When I follow "Add to favorites"
    Then I should see "1"

    When I am on the Jobs page
    And I follow "Favorites"
    Then I should be on the Favorites page
    And I should see "FrontEnd developer"