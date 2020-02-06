class AddNumberOfTableToRestaurant < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :number_of_table, :integer, default: 0
  end
end
