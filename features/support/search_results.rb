class SearchResultsPage
  
  include Capybara::DSL

  $categories_region = '//*[@id="ctl00_Conteudo_PaginaSistemaArea1_3968"]/div[2]/div'
  $suggestions_region = '//*[@id="ctl00_Conteudo_520"]/div/div[2]/div[1]/div[3]/div[2]/ul'
  $product_filter_location = 'selOrdenacao'
  
  # First Product Location
  $first_product_location = "#vitrineProdutos"
#  $first_product_link = 'link'

  def select_first_product
    within($first_product_location) do 
    	puts $first_product_location
        find('//*[@id="327360"]/a/strong').click
    end
    find(:path, $first_product_location)
  end

  def filter(category)
    within(:xpath, $categories_region) do
      click_on(category)
    end
  end

  def search_suggestions
    find(:xpath, $suggestions_region)
    results = [['suggestions']] + 
              page.all(:xpath, $suggestions_region + '/li').map do |li|
      [li.text]
    end
    return results
  end

  def product_filter(criteria)
    select criteria, from: $product_filter_location
  end

end

module KnowsSearchResultsPage
  
  def my_results_page
    @my_results_page ||= SearchResultsPage.new
  end

end

World(KnowsSearchResultsPage)
