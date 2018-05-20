class RemoveBrandFromOplungs < ActiveRecord::Migration[5.1]
  def change
    remove_column :oplungs, :brand
  end
end
