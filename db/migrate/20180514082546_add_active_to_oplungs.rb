class AddActiveToOplungs < ActiveRecord::Migration[5.1]
  def change
    add_column :oplungs, :active, :boolean
  end
end
