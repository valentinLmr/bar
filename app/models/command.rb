class Command < ApplicationRecord
  belongs_to :table
  belongs_to :user
  has_one :menu, through: :table
  has_many :appetizers, through: :menu
end
