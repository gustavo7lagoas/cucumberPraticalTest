Feature: Search for Product
	In order to get updated about product prices
	As a online shopper
	I want to check prices for new products

Scenario: Search for a product
	Given I am surfing in my favorite ecommerce
	When I search for "Ipad"
	Then I should see "Ipad"
	And I should see "Ipad Mini"
	
