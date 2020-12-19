FactoryBot.define do
  factory :product do
    name { "MyString" }
    price { 1 }
    available { false }
    description { "MyText" }
  end
end
