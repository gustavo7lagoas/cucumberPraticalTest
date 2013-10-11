Feature: Check the trolley
  In order to evaluate my purchase
  As an online shopper
  I want to check my trolley
  And put  new product on it
  And remove a product from it

Scenario: Putting the cheapest product on trolley
  Given I am surfing in my favorite ecommerce
  And I want to buy the "cheapest" "TV Led"
  When I put this "TV" in the shopping trolley
  Then I have it in my shopping trolley
