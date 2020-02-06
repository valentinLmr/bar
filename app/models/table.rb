class Table < ApplicationRecord
  belongs_to :restaurant
  validates :number, presence: true
  has_many :commands, dependent: :destroy

  # after_create :generate_qr

  # def generate_qr
  #   self.qr = RQRCode::QRCode.new(table_path(@table))
  #   save
  # end

end
