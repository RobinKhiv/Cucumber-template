#Author: robinkhiv@yahoo.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table

@tag
Feature: Can open browser and search web correctly?
  To test whether searching the web for a key redirects to the correct page.

  @tag1
 	Scenario: web brower redirects when user searches "doge"
    Given a search brower
    When "doge" is searched
    Then then result should be true  

  @tag2
  Scenario Outline: searching
    Given a search brower
    When <searchkey> is searched 
    Then then result should be <result> 

    Examples: 
      | searchkey  |    result  |
      | "doge"     |    true    |
      
      