class AddPhotoToDrink < ActiveRecord::Migration[5.2]
  def change
    add_column :drinks, :photo, :string
  end
end
