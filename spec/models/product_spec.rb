# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  name        :string
#  price       :integer
#  available   :boolean          default(TRUE)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:product) { create(:product) }
  it 'should create a valid Product' do
    expect(product).to be_valid
  end
  it 'all validates except available' do
    should validate_length_of(:name).is_at_least(1).is_at_most(30)
    should validate_length_of(:description).is_at_least(1).is_at_most(500)
    should validate_numericality_of(:price)
  end
end
