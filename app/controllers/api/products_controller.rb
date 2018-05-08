class Api::ProductsController < ApplicationController
  def climbing_product_action
    @product = Product.first
    render 'climbing_product_view.json.jbuilder'
  end
end
