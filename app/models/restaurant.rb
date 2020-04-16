class Restaurant < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
  validates :description, presence: true
  has_many :tables, dependent: :destroy
  has_many :menus, dependent: :destroy
end
