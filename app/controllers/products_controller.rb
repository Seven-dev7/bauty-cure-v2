class ProductsController < ApplicationController
  load_and_authorize_resource 
  
  def index
  end

  def show
  end

  def add_to_cart
    CartProduct.create!(cart_id: params[:cart_id], product_id: params[:product_id])
    redirect_to products_path
  end
end
