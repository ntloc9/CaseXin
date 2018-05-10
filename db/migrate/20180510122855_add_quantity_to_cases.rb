class AddQuantityToCases < ActiveRecord::Migration[5.1]
  def change
    add_column :cases, :quantity, :integer
  end
end
