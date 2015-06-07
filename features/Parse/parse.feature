Feature: Parse
  In order persist the data on the database
  As a developer
  I want to upload a file

  Scenario: Uploading a valid file
    Given I am on the new parse page
    When I upload a csv file
    And I press importar button
    Then the ubs was created
    And I should see the file upload page again

  Scenario: Uploading a invalid file
    Given I am on the new parse page
    When I upload a different extension file
    And I press importar button
    Then the ubs was not created
    And I should see an error message on the parse new page

