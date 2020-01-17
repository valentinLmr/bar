class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.references :table, foreign_key: true
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
