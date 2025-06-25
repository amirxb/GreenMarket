class Order < ApplicationRecord
  belongs_to :user
  belongs_to :cart
  has_one :confirmation

  validates :card_number, presence: true
  validates :expiration, presence: true
  validates :cvv, presence: true
end
