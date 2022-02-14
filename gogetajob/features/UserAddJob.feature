Feature: Company can add a job

  As a company
  I want to add a job
  so that I can add a job on the new job page

  Scenario: Company add a job

    Given a company
    Given a job

    When I am on the home page
    And I follow "Sign In"
    Then I should be on the Sign In page

    When I fill in "user_email" with "evilcorp@mail.com"
    And I fill in "user_password" with "password"
    And I press "Log in"
    Then I should be on the home page

    When I follow "Post Job"
    Then I should be on the New Job page

    When I fill in "job_title" with "FrontEnd developer"
    And I fill in "job_apply_url" with "http://twitter/apply"
    And I select "Freelance" from "job_job_type"
    And I fill in "job_location" with "San Francisco"
    And I fill in "job_description" with "Lorem ipsum ipsum Lorem ipsum ipsumLorem ipsum ipsum"
    And I fill in "job_job_author" with "EVIL CORP"
    And I fill in "job_url" with "http://twitter.com"
    And I attach "job_avatar" to "../gogetajob/features/twitter.jpeg"
    And I wait 5 sec
#    When I switch to the 1st iframe
#    And I fill in "cardnumber" with "4242424242424242"
#    And I fill in "exp-date" with "04 / 24"
#    And I fill in "cvc" with "242"
#    And I fill in "postal" with "42424"
    And I press "Create Job"
    Then I should be on the Jobs page