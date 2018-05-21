class RenameBrandPhoneModelToBrandPhonemodel < ActiveRecord::Migration[5.1]
  def change
    rename_table :brand_phone_models, :brand_phonemodels
  end
end
