class ChangeStateToCommands < ActiveRecord::Migration[5.2]
  def change
    change_column :commands, :state, :boolean, default: false
  end
end
