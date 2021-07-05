require 'rails_helper'

RSpec.describe "UserInformations", type: :request do
  let(:user) { create(:user) }
  #before { sign_in user}
  describe "GET /show" do
    it "returns http success" do
      get user_user_information_path(user.id, user.user_information.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    xit "returns http success" do
      get edit_user_user_information_path(user.id, user.user_information.id)
      expect(response).to have_http_status(:success)
    end
  end

end
