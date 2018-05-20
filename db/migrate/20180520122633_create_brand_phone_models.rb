class CreateBrandPhoneModels < ActiveRecord::Migration[5.1]
  def change
    create_table :brand_phone_models do |t|
      t.belongs_to :brand, foreign_key: true, null: false
      t.belongs_to :phone_model, foreign_key: true, null: false

      t.timestamps
    end
  end
end
