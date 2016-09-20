class CreatePitches < ActiveRecord::Migration[5.0]
  def change
    create_table :pitches do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :student_id, foreign_key: true

      t.timestamps
    end
  end
end
