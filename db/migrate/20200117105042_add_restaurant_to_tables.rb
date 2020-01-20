class AddRestaurantToTables < ActiveRecord::Migration[5.2]
  def change
    add_reference :tables, :restaurant, foreign_key: true
  end
end
