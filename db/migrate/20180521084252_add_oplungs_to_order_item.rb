class AddOplungsToOrderItem < ActiveRecord::Migration[5.1]
  def change
    add_reference :order_items, :oplung, foreign_key: true
  end
end
