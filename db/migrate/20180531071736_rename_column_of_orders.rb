class RenameColumnOfOrders < ActiveRecord::Migration[5.1]
  def change
    rename_column :orders, :sdt, :diachi
  end
end
