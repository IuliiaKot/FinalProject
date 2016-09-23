class CreateRanks < ActiveRecord::Migration[5.0]
  def change
    create_table :ranks do |t|
      t.references :pitch
      t.references :student
      t.integer :rank

      t.timestamps
    end
  end
end
