class RemoveTableFromMenus < ActiveRecord::Migration[5.2]
  def change
    remove_reference :menus, :table, foreign_key: true
  end
end
