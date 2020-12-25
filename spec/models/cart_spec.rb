# == Schema Information
#
# Table name: carts
#
#  id         :bigint           not null, primary key
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Cart, type: :model do
  let(:cart) { create(:cart) }
  it 'should create a valid Cart' do
    expect(cart).to be_valid
  end
  it { should belong_to(:user) }
  it { should have_many(:cart_products) }
end
