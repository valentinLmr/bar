class ChangeStateToDishescommands < ActiveRecord::Migration[5.2]
  def change
    change_column :dishescommands, :state, :boolean, default: false

  end
end
