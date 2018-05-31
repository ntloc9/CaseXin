class RemoveLastNameFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :last_name
    rename_column :orders, :first_name, :name
  end
end
