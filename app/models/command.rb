class Command < ApplicationRecord
  belongs_to :table
  belongs_to :user
  has_many :dishescommands, dependent: :destroy
end
