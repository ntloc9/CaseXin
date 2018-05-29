class CreateImageAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :image_attachments do |t|
      t.integer :oplung_id
      t.string :image

      t.timestamps
    end
  end
end
