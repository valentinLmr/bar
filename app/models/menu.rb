class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :appetizers, dependent: :destroy
  has_many :drinks, dependent: :destroy
end
