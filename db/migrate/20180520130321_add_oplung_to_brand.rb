class AddOplungToBrand < ActiveRecord::Migration[5.1]
  def change
    add_reference :oplungs, :brand, foreign_key: true
  end
end
