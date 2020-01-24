class Drink < ApplicationRecord
  belongs_to :menu
  has_many :dishescommands
  validates :name, presence: true
  validates :price, presence: true
end
