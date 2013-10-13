Feature: Search suggestion 
  In order to make easier to shoppers to find products
  As a ecommerce
  I want to make suggestions about shoppers searches

Scenario: Search suggestion 
  Given I am surfing in my favorite ecommerce
  When I search for "PS3"
  Then I should see the search suggestions
    | suggestions   |
    | Console Ps3   |
    | Jogos Ps3     |
    | Console       |
    | Playstation 3 |
    | Gta 5         |
    | Play 3        |
    | Gta V         |
    | Playstation   |
