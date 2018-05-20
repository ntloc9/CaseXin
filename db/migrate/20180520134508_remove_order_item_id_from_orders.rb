class RemoveOrderItemIdFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :order_item_id
  end
end
