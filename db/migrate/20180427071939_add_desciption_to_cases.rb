class AddDesciptionToCases < ActiveRecord::Migration[5.1]
  def change
    add_column :cases, :description, :string
  end
end
