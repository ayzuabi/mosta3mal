Feature: search for used car by client

  As a usercar client
  So that I can find used car 
  I want to search by model or make

Scenario: find car by make
  When I am on the mosta3mal home page
  And  I select "hyundai" from "carmake" 
  And  I press "search"
  Then I should be on the home page
  And  I should see "Burgundy"

Scenario: find car by model
  When I am on the mosta3mal home page
  And  I select "Matrix" from "carmodel" 
  And  I press "search"
  Then I should be on the home page
  And  I should see "Silver"

Scenario: List all cars
  When I am on the mosta3mal home page
  And  I press "List All"
  Then I should be on the home page
  And  I should see "Silver"
  And  I should see "black"
  And  I should see "white"
  And  I should see "Burgundy"
  And  I should see "red"


Scenario: clicking on menu link
  When I am on the mosta3mal home page
  And  I follow "hyundai"
  Then I should be on the home page
  And  I should see "Burgundy"

Scenario: negative test for car information
  When I am on the mosta3mal home page
  And  I select "opel" from "carmake" 
  And  I press "search"
  Then I should be on the mosta3mal home page
  And  I should not see "Burgundy"

Scenario: show car information
  When I am on the mosta3mal home page
  And  I select "opel" from "carmake" 
  And  I press "search"
  Then I should be on the mosta3mal home page
  And  I follow "Show"
  Then I should be on the car details page
  And  I should see "astra"

