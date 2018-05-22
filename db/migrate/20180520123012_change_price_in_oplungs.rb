class ChangePriceInOplungs < ActiveRecord::Migration[5.1]
  def change
    change_column :oplungs, :title, :string, null: false
  end
end
