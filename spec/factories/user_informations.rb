# == Schema Information
#
# Table name: user_informations
#
#  id         :bigint           not null, primary key
#  first_name :string
#  last_name  :string
#  address    :string
#  zip_code   :string
#  city       :string
#  country    :string
#  phone      :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :user_information do
    first_name { "Jack" }
    last_name {"O'neill"}
    address {"Cheyenne Mountain"}
    zip_code {"98532"}
    city {"Colorado springs"}
    country {"Les states"}
    phone {"0604516372"}
    association :user
  end
end
