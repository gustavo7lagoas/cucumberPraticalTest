# encoding: utf-8

When(/^I search for "(.*?)"$/) do |product|
  my_search_page.search product
#  fill_in 'sli_search_1', :with => product
#  click_on "ctl00_Conteudo_PaginaSistemaArea1_ctl00_btnOK"
end

Then(/^I should see the search suggestions$/) do |expected_results|
  find(:xpath, '//*[@id="ctl00_Conteudo_520"]/div/div[2]/div[1]/div[3]/div[2]/ul')
  results = [['suggestions']] +
            page.all(:xpath, '//*[@id="ctl00_Conteudo_520"]/div/div[2]/div[1]/div[3]/div[2]/ul/li').map do |li|
    [li.text]
  end
  puts results.join("\n")
  expected_results.diff!(results)
end

