# encoding: utf-8

Given(/^I am surfing in my favorite ecommerce$/) do
  visit $ecommerce_base_url
end

Then(/^I should read "(.*?)"$/) do |text|
  page.has_title?  "Pontofrio.com: a maior loja de Eletrônicos e Eletrodomésticos do Brasil"
end
