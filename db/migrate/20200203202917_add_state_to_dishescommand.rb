class AddStateToDishescommand < ActiveRecord::Migration[5.2]
  def change
    add_column :dishescommands, :state
  end
end
