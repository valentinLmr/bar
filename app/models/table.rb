class Table < ApplicationRecord
  belongs_to :restaurant
  validates :number, presence: true

  # after_create :generate_qr

  # def generate_qr
  #   self.qr = RQRCode::QRCode.new(table_path(@table))
  #   save
  # end
end
