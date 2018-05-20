class RemoveModelFromOplungs < ActiveRecord::Migration[5.1]
  def change
    remove_column :oplungs, :model
  end
end
