class RemoveAppetizerFromDishescommands < ActiveRecord::Migration[5.2]
  def change
    remove_reference :dishescommands, :appetizer, foreign_key: true
  end
end
