class CreatePhoneModels < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_models do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
