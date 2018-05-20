class AddOplungToPhoneModel < ActiveRecord::Migration[5.1]
  def change
    add_reference :oplungs, :phone_model, foreign_key: true
  end
end
