class CartProductsController < ApplicationController
  def destroy
    CartProduct.find(params[:id]).destroy
    flash[:success] = 'Vous avez enlevé le produit de votre panier'
    redirect_to user_cart_path(current_user.id, current_user.cart.id)
  end
end