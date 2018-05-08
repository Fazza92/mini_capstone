Rails.application.routes.draw do
  namespace :api do
    get '/climbing_products_url' => 'gear#climbing_product_action'
    get '/climbing_product_url' => 'gear#all_climbing_product_action'
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
end
