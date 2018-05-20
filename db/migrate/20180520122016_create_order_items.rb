class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity, null: false
      t.decimal :price, null: false

      t.timestamps
    end
  end
end
