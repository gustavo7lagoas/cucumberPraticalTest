Feature: Check the trolley
	In order to evaluate my purchase
	As an online shopper
	I want to check my trolley
	And put  new product on it
	And remove a product from it

Scenario: Putting a new product on the trolley
	Given I want a new "TV"
	And I am surfing in my favorite ecommerce
	And Find a nice "TV"
	When I put this "TV" in the shopping trolley
	Then I can see it in my shopping trolley
