class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.references :pitch
      t.integer :count, default: 0
      t.integer :student_id, foreign_key: true
      t.timestamps
    end
  end
end
