class ChangeCaseToOplung < ActiveRecord::Migration[5.1]
  def change
    rename_table :cases, :oplungs
  end
end
