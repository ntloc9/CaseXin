class AddSaleToCases < ActiveRecord::Migration[5.1]
  def change
    add_column :cases, :sale, :integer
  end
end
