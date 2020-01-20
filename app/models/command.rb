class Command < ApplicationRecord
  belongs_to :table
  has_one :menu, through: :table
  has_many :dishescommands, through: :menu
end
