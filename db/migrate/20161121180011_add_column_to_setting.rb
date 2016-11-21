class AddColumnToSetting < ActiveRecord::Migration[5.0]
  def change
    add_column :settings, :active_first_round, :boolean, default: false
    add_column :settings, :active_second_round, :boolean, default: false
  end
end
