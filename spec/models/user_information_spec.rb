require 'rails_helper'

RSpec.describe UserInformation, type: :model do
  let(:user_information) { create(:user_information) }
  it 'should create a valid User' do
    expect(user_information).to be_valid
  end
  it { should belong_to(:user) }
  it do
    should validate_length_of(:first_name).is_at_least(1).is_at_most(30)
    should validate_length_of(:last_name).is_at_least(1).is_at_most(30)
    should validate_length_of(:address).is_at_least(5).is_at_most(200)
    should validate_length_of(:city).is_at_least(5).is_at_most(80)
    should validate_length_of(:country).is_at_least(5).is_at_most(80)
    should validate_length_of(:zip_code).is_at_least(1).is_at_most(10)
    should validate_length_of(:phone).is_at_least(1).is_at_most(20)
  end
end
