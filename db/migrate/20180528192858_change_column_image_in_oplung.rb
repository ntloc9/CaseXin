class ChangeColumnImageInOplung < ActiveRecord::Migration[5.1]
  def change
    rename_column :oplungs, :image, :thumbnail
  end
end
