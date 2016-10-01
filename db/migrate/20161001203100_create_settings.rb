class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.belongs_to :cohort, index: true
      t.integer :pitches_per_student
      t.integer :number_in_second_round

      t.timestamps
    end
  end
end
