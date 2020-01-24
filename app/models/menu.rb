class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :appetizers
  has_many :drinks
end
