Rails.application.routes.draw do
  namespace :api do
    get '/climbing_products_url' => 'products#climbing_product_action'
    get '/climbing_product_url' => 'products#all_climbing_product_action'
  end
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
end
