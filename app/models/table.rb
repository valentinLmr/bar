class Table < ApplicationRecord
  belongs_to :restaurant
  validates :number, presence: true

  after_create :generate_qr

  def generate_qr
    self.qr = SecureRandom.hex
    save
  end
end
