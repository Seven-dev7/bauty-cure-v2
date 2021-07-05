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
FactoryBot.define do
  factory :product do
    name { "MyString" }
    price { 1 }
    available { false }
    description { "MyText" }
  end
end
