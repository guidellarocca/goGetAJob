Feature: Company can modify description of his job

  As a user
  I want to modifie my description
  so that I can modifie my description on the user's profile

  Scenario: Company modify a job

    Given a company
    Given a job

    When I am on the home page
    And I follow "Sign In"
    Then I should be on the Sign In page

    When I fill in "user_email" with "evilcorp@mail.com"
    And I fill in "user_password" with "password"
    And I press "Log in"
    Then I should be on the home page

    When I follow "Edit"
    Then I should be on the Edit page

    When I fill in "job_description" with "New Description"
    And I press "Update Job"
    Then I should be on the Job page
    And I should see "New Description"