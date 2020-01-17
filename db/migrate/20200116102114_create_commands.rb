class CreateCommands < ActiveRecord::Migration[5.2]
  def change
    create_table :commands do |t|
      t.integer :number_of_diner
      t.boolean :states
      t.date :times
      t.text :appet, array: true, default: []
      t.references :table, foreign_key: true
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
