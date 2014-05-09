# encoding: utf-8

When(/^I want to put it in the shopping trolley$/) do
  # Buy product
  find(:xpath, '//*[@id="ctl00_Conteudo_ctl31_Content"]/a').click
  find_by_id('ctl00_Conteudo_lnkComprarItens').click
  page.should have_content @selected_product
end

Then(/^I have it in my shopping trolley$/) do
  page.should have_content @selected_product
end
