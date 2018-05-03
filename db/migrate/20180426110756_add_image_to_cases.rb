class AddImageToCases < ActiveRecord::Migration[5.1]
  def change
    add_column :cases, :image, :string
  end
end
