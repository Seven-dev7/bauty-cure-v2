# == Schema Information
#
# Table name: carts
#
#  id         :bigint           not null, primary key
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Cart < ApplicationRecord
    belongs_to :user
    has_many :cart_products

    def total_amount
        cart_products.map {|cp| cp.product.price }.sum
    end
    def total_item
        cart_products.count
    end
end
