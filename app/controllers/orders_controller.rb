class OrdersController < ApplicationController
  #before_action :authenticate_user!

  def show
  end

  def index
  end

  def new

  end

  def create
    order = Order.create(params_order)
    user = User.find(params[:order][:user_id])
    user.cart.cart_products.map(&:product).each do |product|
      OrderProduct.create!(order_id: order.id, product_id: product.id)
    end
  end

  private

  def params_order
    params.require(:order).permit(:user_id)
  end
end
