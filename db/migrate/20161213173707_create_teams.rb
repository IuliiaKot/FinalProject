class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.integer :pitch_id, null: false
      t.integer :lead_id, null: false
      t.integer :student_id, null: false
      
      t.timestamps
    end
  end
end
