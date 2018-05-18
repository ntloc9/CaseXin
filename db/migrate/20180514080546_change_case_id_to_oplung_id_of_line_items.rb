class ChangeCaseIdToOplungIdOfLineItems < ActiveRecord::Migration[5.1]
  def change
    rename_column :line_items, :case_id, :oplung_id
  end
end
