class Api::ProductsController < ApplicationController
  def climbing_product_action
    @product = Product.first
    render 'climbing_product_view.json.jbuilder'
  end

  def all_climbing_product
    @products = Product.all
    render 'all_climbing_product_view.json.jbuilder'
  end
end
