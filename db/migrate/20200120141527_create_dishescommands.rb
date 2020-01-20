class CreateDishescommands < ActiveRecord::Migration[5.2]
  def change
    create_table :dishescommands do |t|
      t.references :command, foreign_key: true
      t.references :appetizer, foreign_key: true

      t.timestamps
    end
  end
end
