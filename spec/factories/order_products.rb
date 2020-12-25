FactoryBot.define do
  factory :order_product do
    association :product
    association :order
  end
end
