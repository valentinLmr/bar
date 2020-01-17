class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :phone_number
      t.string :name
      t.string :address
      t.integer :note
      t.string :email
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
