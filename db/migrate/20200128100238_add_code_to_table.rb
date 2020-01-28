class AddCodeToTable < ActiveRecord::Migration[5.2]
  def change
    add_column :tables, :code, :string
  end
end
