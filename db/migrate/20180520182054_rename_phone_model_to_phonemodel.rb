class RenamePhoneModelToPhonemodel < ActiveRecord::Migration[5.1]
  def change
    rename_table :phone_models, :phonemodels
  end
end
