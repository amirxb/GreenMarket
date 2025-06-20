class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable # , :validatable

  has_many :carts, dependent: :destroy
  has_many :orders, dependent: :destroy

  has_many :notifications, dependent: :destroy
  # has_one :cart, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  # validates :email, presence: true, uniqueness: true, on: :create
  validates :password, presence: true
  has_one_attached :profile_picture

end
