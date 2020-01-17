class Appetizer < ApplicationRecord
  belongs_to :menu
  validates :name, presence: true
  validates :recipe, presence: true
  validates :price, presence: true
end
