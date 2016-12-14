class AddColumnToTableSetting < ActiveRecord::Migration[5.0]
  def change
    add_column :settings, :archived, :boolea, default: :false
  end
end
