class RenamePhoneModelIdInOplungs < ActiveRecord::Migration[5.1]
  def change
    rename_column :oplungs, :phone_model_id, :phonemodel_id
  end
end
