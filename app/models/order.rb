class Order < ApplicationRecord
  belongs_to :user
  belongs_to :cart
  has_one :confirmation
end
