FactoryBot.define do
  factory :user_information do
    first_name { "Jack" }
    last_name {"O'neill"}
    address {"Cheyenne Mountain"}
    zip_code {"98532"}
    city {"Colorado springs"}
    country {"Les states"}
    association :user
  end
end
