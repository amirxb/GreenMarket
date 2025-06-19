class Farmer < ApplicationRecord
  has_many :products

  validates :name, presence: true
  validates :location, presence: true
  validates :contact_info, presence: true
end
