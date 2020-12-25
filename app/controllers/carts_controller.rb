class CartsController < ApplicationController
  
  def show
    @cart = Cart.find(params[:id])
  end
  def delete_cart_item
    # @cart_product = CartProduct.find(params[:cart_id])
    # @cart_product.destroy_all
    # redirect_to cart_path(current_user.cart.id)
  end
end
