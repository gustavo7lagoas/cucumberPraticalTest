require 'watir-webdriver'
require 'test/unit'

class SaraivaBuy < Test::Unit::TestCase
    def buy_product(product_title)
        search_product product_title
        @browser.a(:text => product_title).click
        @browser.a(:class => "botaoComprar").click
        @browser.a(:xpath => '//*[@id="bt-comprar"]/a').click
        keep_shopping
    end

    def keep_shopping
        @browser.a(:xpath => '/html/body/table/tbody/tr[5]/td/table/tbody/tr/td[8]/a').click
    end

    def search_product(product_title)
        @browser.text_field(:class => "buscaText").set product_title
        @browser.button(:value => "Enviar").click
    end

    def show_shopping_cart
        @browser.a(:text => "Meu carrinho").click
    end

    def get_browser
        @browser = Watir::Browser.new :ff
    end

    def visit url
        @browser.goto url
    end

    def test_shopping
        browser = get_browser
        visit "http://www.livrariasaraiva.com.br"
        buy_product("Console Xbox One 500gb + Kinect")
        show_shopping_cart
        assert(browser.text.include?("Console Xbox One 500gb + Kinect"))
    end
end