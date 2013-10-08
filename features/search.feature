Feature: Search for Product
	In order to get updated about product prices
	As a online shopper
	I want to check prices for new products

Scenario: Search for a product
	Given I am surfing in my favorite ecommerce
	And I want to check prices for a product
	When I search for "IPad"
	Then I should see "Ipad"
	And I should see "Ipad Mini"
	
