class ProductSelectionPage
  
  include Capybara::DSL
 
  $first_product_location = '//*[@id="gridlistdiv"]/ul/li[1]'
  $first_product_link = 'link'

  def select_first_product
    within(:xpath, $first_product_location) do
      find_link($first_product_link).click
    end
  end

end
