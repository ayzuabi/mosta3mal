Feature: search for used car by client

  As a usercar client
  So that I can find used car 
  I want to search by model or make

Scenario: add director to existing movie
  When I am on the mosta3mal home page
  And  I select "hyundai" from "carmake" 
  And  I press "submit"
  Then I should be on the home page
  And  I should see "Matrix"
