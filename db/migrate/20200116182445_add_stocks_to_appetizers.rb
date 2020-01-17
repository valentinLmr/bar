class AddStocksToAppetizers < ActiveRecord::Migration[5.2]
  def change
    add_column :appetizers, :stock, :integer
  end
end
