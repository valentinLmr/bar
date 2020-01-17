class Menu < ApplicationRecord
  belongs_to :table
  belongs_to :restaurant
  has_many :appetizers
end
