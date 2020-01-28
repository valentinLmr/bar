class Table < ApplicationRecord
  belongs_to :restaurant
  validates :number, presence: true

  # after_create :generate_code

  # def generate_code
  #   self.code = SecureRandom.hex
  #   save
  # end
end
