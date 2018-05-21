class RenamePhoneModelIdInBrandPhonemodels < ActiveRecord::Migration[5.1]
  def change
    rename_column :brand_phonemodels, :phone_model_id, :phonemodel_id
  end
end
