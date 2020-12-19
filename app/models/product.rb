class Product < ApplicationRecord
    validates_length_of :name, in: 1..30
    validates_length_of :description, in: 1..500
    validates_numericality_of :price
end
