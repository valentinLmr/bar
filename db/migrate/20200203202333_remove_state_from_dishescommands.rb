class RemoveStateFromDishescommands < ActiveRecord::Migration[5.2]
  def change
    remove_column :dishescommands, :state, :string
  end
end
