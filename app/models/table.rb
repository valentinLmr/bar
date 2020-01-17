class Table < ApplicationRecord
  has_one :menu
  validates :number, presence: true
end
