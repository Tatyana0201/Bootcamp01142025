#Author:
#Jira ID 123
@medicenter
Feature: Search Engines Olga B

   #www.gibiru.com exercise
  Scenario: Search by www.gibiru.com 
    Given I open url "https://www.gibiru.com/"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then I wait for element with xpath "//input[@id='q']" to be present
    And I type "Development" into element with xpath "//input[@id='q']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//input[@id='q']" to be present
    Then I wait for element with xpath "//div[@class='gsc-control-cse gsc-control-cse-en']" to be present
    And element with xpath "//div[@class='gsc-control-cse gsc-control-cse-en']" should contain text "Development"
    And I wait for 3 sec