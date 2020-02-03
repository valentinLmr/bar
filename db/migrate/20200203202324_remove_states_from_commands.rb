class RemoveStatesFromCommands < ActiveRecord::Migration[5.2]
  def change
    remove_column :commands, :states, :string
  end
end
