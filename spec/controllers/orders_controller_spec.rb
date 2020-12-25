require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
  let!(:user) { create(:user) }
  let(:order) { create(:order, user: user) }
  let!(:cart_product0) { create(:cart_product, cart: user.cart) }
  let!(:cart_product1) { create(:cart_product, cart: user.cart) }

  context 'User has 2 products in his bag' do
    it 'should copy all products from cart' do
      expect { post :create , params: {user_id: user.id, order: {user_id: user.id }} }
          .to change { OrderProduct.count }.by(2)
    end
  end
end
