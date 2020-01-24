class AddDrinkRefToDishescommands < ActiveRecord::Migration[5.2]
  def change
    add_reference :dishescommands, :drink, foreign_key: true
  end
end
