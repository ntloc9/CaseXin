class ChangeDataTypeForDescription < ActiveRecord::Migration[5.1]
  def change
    change_column :cases, :price, :string
  end
end
