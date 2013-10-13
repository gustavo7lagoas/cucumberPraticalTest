# encoding: utf-8

Given(/^I am surfing in my favorite ecommerce$/) do
  visit $ecommerce_base_url
end

When(/^I put this "(.*?)" in the shopping trolley$/) do |product|
  # Buy product
  find(:xpath, '//*[@id="ctl00_Conteudo_ctl31_Content"]/a').click
  find_by_id('ctl00_Conteudo_lnkComprarItens').click
  page.should have_content @selected_product
end

Then(/^I can see it in my shopping trolley$/) do
  page.should have_content 'Meu carrinho'
end

Then(/^I should read "(.*?)"$/) do |text|
  page.has_title?  "Pontofrio.com: a maior loja de Eletrônicos e Eletrodomésticos do Brasil"
  page.should have_xpath('//*[@id="ctl00_TopBar_TopBar1_divHeader"]/div[1]/div/h1')
end

Given(/^I want to buy the "(.*?)" "(.*?)"$/) do |criteria, product|
  fill_in 'sli_search_1', :with => product
  # Search
  click_on 'ctl00_Conteudo_PaginaSistemaArea1_ctl04_btnOK'
  # Select Category
  find(:xpath, '//*[@id="slicategoryfacetpres"]/h2[1]/a').click
  # Select Sub Category
  find(:xpath, '//*[@id="slicategoryfacetpres"]/h2[2]/a').click
  # Order by Price
  select 'Menor preço', from: 'selOrdenacao'
  # Select product
  @selected_product = find(:xpath,'//*[@id="327360"]/a/span[1]/img[@alt]').value
  find(:xpath, '//*[@id="327360"]/a/span[1]/img').click
end

Then(/^I have it in my shopping trolley$/) do
  page.should have_content @selected_product
end
