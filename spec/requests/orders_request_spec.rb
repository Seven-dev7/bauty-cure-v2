require 'rails_helper'

RSpec.describe "Orders", type: :request do
  let(:user) { create(:user)}
  let(:order) { create(:order, user: user)}

  describe "GET /show" do
    it "returns http success" do
      get user_order_path(user.id, order.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get user_orders_path(user.id)
      expect(response).to have_http_status(:success)
    end
  end

end
