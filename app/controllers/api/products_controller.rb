class Api::ProductsController < ApplicationController
 def index
  products = Product.all
  render 'index.json.jbuilder'
 end


 def create
   @product = Product.new(
                          name: params[:name]
                          price: params[:price]
                          img_url: params[:img_url]
                          description: params[:description]

                          )
   @product.save
   render 'show.json.jbuilder'
 end

 def show
  product_id = params[:id]
   products = Product.find(product_id)
   render 'show.json.jbuilder'
 end
 
 def update
   product_id = params[:id]
   product = Product.find(product_id)

   product.name = params[:name] || @product.name
   product.price = params[:price] || @product.price
   product.img_url = params[:img_url] || @product.img_url
   product.description = params[:description] || @product.description

   @product.save
   render 'show.json.jbuilder'
 end

 def destroy
   product_id = params[:id]
   @product = Product.find(product_id)
   @product.destroy
   render json: {message: "Deleted"}
 end

end
