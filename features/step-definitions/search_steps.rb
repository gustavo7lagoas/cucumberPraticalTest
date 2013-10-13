# encoding: utf-8

Given(/^I filter the search results$/) do |criteria|
  criteria.hashes.each do |hash|
    @category = hash[:Category]
    @subcategory = hash[:SubCategory]
    @criteria = hash[:Criteria]
  end
  # Select Category
  my_results_page.filter @category
  # Select Sub Category
  my_results_page.filter @subcategory
  # Order by Price
  my_results_page.product_filter @criteria
end

When(/^I search for "(.*?)"$/) do |product|
  my_search_page.search product
end

When(/^I want to buy the cheapest product$/) do
  @selected_product = find(:xpath,'//*[@id="327360"]/a/span[1]/img[@alt]').value
  find(:xpath, '//*[@id="327360"]/a/span[1]/img').click
  # my_results_page.select_first_product
  # pending # express the regexp above with the code you wish you had
end

Then(/^I should see the search suggestions$/) do |expected_results|
  results = my_results_page.search_suggestions
  expected_results.diff!(results)
end
