require 'rails_helper'

RSpec.describe "UserInformations", type: :request do

  describe "GET /show" do
    it "returns http success" do
      get "/user_informations/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/user_informations/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
