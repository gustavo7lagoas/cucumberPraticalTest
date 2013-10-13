class SearchPage

  include Capybara::DSL

  $search_field = 'sli_search_1'
  $search_button = "ctl00_Conteudo_PaginaSistemaArea1_ctl00_btnOK"
  $ecommerce_base_url = 'http://www.pontofrio.com.br/'
  
  def search(criteria)
    fill_in $search_field, :with => criteria
    click_on $search_button
  end

end

module KnowsSearchPage
  def my_search_page
    @search_page ||= SearchPage.new
  end
end

World(KnowsSearchPage)
