require 'rails_helper'

RSpec.describe OrderProduct, type: :model do
  let(:order_product) { create(:order_product) }

  it 'should create a valid OrderProduct' do
    expect(order_product).to be_valid
  end
  it { should belong_to(:product) }
  it { should belong_to(:order) }
end
