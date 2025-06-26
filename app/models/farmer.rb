class Farmer < ApplicationRecord
  has_many :products
  has_one_attached :image

  validates :name, presence: true
  validates :location, presence: true
  validates :contact_info, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
