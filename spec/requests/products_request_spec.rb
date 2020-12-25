require 'rails_helper'

RSpec.describe "Products", type: :request do
  let(:product) { create(:product) }
  let(:user) { create(:user) }
  describe "GET /index" do
    it "returns http success" do
      get products_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get product_path(product.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /add_to_cart" do
    it "returns http success" do
      expect { post :add_to_cart, params: {product_id: product.id, cart_id: user.cart.id }, session: {current_user: user} }.to change { user.cart.cart_products.count }.by(1)
    end
  end
end
