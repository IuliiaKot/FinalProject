class AddColumnToPitches < ActiveRecord::Migration[5.0]
  def change
    add_column :pitches, :final, :boolean, default: false
  end
end
