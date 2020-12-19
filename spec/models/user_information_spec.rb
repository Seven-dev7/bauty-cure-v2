require 'rails_helper'

RSpec.describe UserInformation, type: :model do
  let(:user_information) { create(:user_information) }
  it 'should create a valid User' do
    expect(user_information).to be_valid
  end
  it { should belong_to(:user) }
end
