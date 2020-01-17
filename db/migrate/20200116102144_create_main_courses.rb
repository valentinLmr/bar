class CreateMainCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :main_courses do |t|
      t.string :name
      t.text :recipe
      t.integer :price
      t.references :menu, foreign_key: true

      t.timestamps
    end
  end
end
