require 'rails_helper'

RSpec.describe "Carts", type: :request do
  let(:user) { create(:user) }
  describe "GET /show" do
    it "returns http success" do
      get user_cart_path(user.id, user.cart.id)
      expect(response).to have_http_status(:success)
    end
  end

end
