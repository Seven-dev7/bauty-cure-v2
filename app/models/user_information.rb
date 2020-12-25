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
class UserInformation < ApplicationRecord
    belongs_to :user
    validates_length_of :first_name, in: 1..30
    validates_length_of :last_name, in: 1..30
    validates_length_of :address, in: 5..200
    validates_length_of :city, in: 5..80
    validates_length_of :country, in: 5..80
    validates_length_of :zip_code, in: 1..10
    validates_length_of :phone, in: 1..20

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
    def full_address
        "#{self.address}, #{self.zip_code} #{self.city}"
    end
end
