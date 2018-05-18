class ChangeForeignKeyForOrderItems < ActiveRecord::Migration[5.1]
  def change
    rename_column :order_items, :product_id, :oplung_id
  end
end
