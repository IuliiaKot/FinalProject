class AddCoumnToSettings < ActiveRecord::Migration[5.0]
  def change
    add_column :settings, :active, :boolean
    add_column :settings, :number_of_teams, :integer
    add_column :settings, :student_vote_first_round, :integer
  end
end
