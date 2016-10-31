class AddCoumnToSettings < ActiveRecord::Migration[5.0]
  def change
    add_column :settings, :active, :boolean
  end
end
