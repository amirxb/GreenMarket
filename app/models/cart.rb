class Cart < ApplicationRecord
  belongs_to :user
  has_one :order
  has_many :cart_items
  has_many :products, through: :cart_items
end
