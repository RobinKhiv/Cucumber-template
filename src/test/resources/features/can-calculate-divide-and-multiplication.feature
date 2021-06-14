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
Feature: Can calculate division and multiplication correctly?
  To test whether division and mutiplication return the correct results.

  @tag1
 	Scenario: 12 divide 4 is 3
    Given a calculator
    When 12 and 4 are divided
    Then then result should be 3
    

  @tag2
  Scenario Outline: dividing
    Given a mutiply and divide calculator
    When <value1> and <value2> are divided 
    Then then result should be <result> 

    Examples: 
      | value1  | value2 | result  |
      | 12      |     4  |    3    |
      
  @tag3
  Scenario: 4 mutiply 5 is 20
    Given a mutiply and divide calculator
    When 4 and 5 are mutiplied
    Then then result should be 20
    
  @tag4
  Scenario Outline: mutiplying
    Given a mutiply and divide calculator
    When <value1> and <value2> are mutiplied 
    Then then result should be <result> 

    Examples: 
      | value1  | value2 | result  |
      |    4    |    5   |    20   |
      
