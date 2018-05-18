class RemoveLineItemsAndCarts < ActiveRecord::Migration[5.1]
  def change
    drop_table :line_items
    drop_table :carts
  end
end
