class Appetizer < ApplicationRecord
  belongs_to :menu
  has_many :dishescommands
  validates :name, presence: true
  validates :recipe, presence: true
  validates :price, presence: true
end
