class Drink < ApplicationRecord
  belongs_to :menu
  has_many :dishescommands, dependent: :destroy
end
