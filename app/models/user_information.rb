class UserInformation < ApplicationRecord
    belongs_to :user
    validates_length_of :first_name, in: 1..30
    validates_length_of :last_name, in: 1..30
    validates_length_of :address, in: 5..200
    validates_length_of :city, in: 5..80
    validates_length_of :country, in: 5..80
    validates_length_of :zip_code, in: 1..10
    validates_length_of :phone, in: 1..20
end
