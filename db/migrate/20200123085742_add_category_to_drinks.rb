class AddCategoryToDrinks < ActiveRecord::Migration[5.2]
  def change
    add_column :drinks, :category, :string
  end
end
