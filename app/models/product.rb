class Product < ApplicationRecord
  belongs_to :farmer
  has_many :cart_items, dependent: :destroy
  has_many :carts, through: :cart_items

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  # validates :stock, presence: true
end
