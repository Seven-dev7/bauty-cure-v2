# == Schema Information
#
# Table name: cart_products
#
#  id         :bigint           not null, primary key
#  cart_id    :bigint
#  product_id :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class CartProduct < ApplicationRecord
    belongs_to :product
    belongs_to :cart
end
