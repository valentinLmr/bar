class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
  validates :description, presence: true
  has_many :tables
  has_many :menus
  belongs_to :user
end
