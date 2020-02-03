class AddStateToCommands < ActiveRecord::Migration[5.2]
  def change
    add_column :commands, :state, :boolean
  end
end
