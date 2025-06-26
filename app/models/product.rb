class Product < ApplicationRecord
  belongs_to :farmer
  has_many :cart_items, dependent: :destroy
  has_many :carts, through: :cart_items
  has_one_attached :photo

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
