class CreateCases < ActiveRecord::Migration[5.1]
  def change
    create_table :cases do |t|
      t.string :brand
      t.string :model
      t.decimal :price, precision: 5, scale: 2, default: 0
      t.string :title

      t.timestamps
    end
  end
end
