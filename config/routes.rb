Rails.application.routes.draw do
  namespace :api do
    get '/climbing_products_url' => 'products#climbing_product_action'
    get '/climbing_product_url' => 'products#all_climbing_product_action'
    get '/climbing_product_url' => 'products#second_climbing_product_action'

  end
end
