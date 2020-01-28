class AddQrToTable < ActiveRecord::Migration[5.2]
  def change
    add_column :tables, :qr, :string
  end
end
