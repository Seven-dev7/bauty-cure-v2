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
class Product < ApplicationRecord
    validates_length_of :name, in: 1..30
    validates_length_of :description, in: 1..500
    validates_numericality_of :price
end
