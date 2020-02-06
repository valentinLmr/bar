class Command < ApplicationRecord
  belongs_to :table
  belongs_to :user
  has_many :dishescommands, dependent: :destroy

  NUMBERS = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
end
