# == Schema Information
#
# Table name: cart_products
#
#  id         :bigint           not null, primary key
#  cart_id    :bigint
#  product_id :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe CartProduct, type: :model do
  let(:cart_product) { create(:cart_product) }
  it 'should create a valid Cart Product' do
    expect(cart_product).to be_valid
  end
  it { should belong_to(:cart) }
  it { should belong_to(:product) }
end
