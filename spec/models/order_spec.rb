require 'rails_helper'

RSpec.describe Order, type: :model do
  let(:order) { create(:order) }

  it 'should create a valid order' do
    expect(order).to be_valid
  end
  it { should belong_to(:user) }
end
