class Setting < ApplicationRecord
  belongs_to :cohort

  validates :number_of_teams, :number_in_second_round, :pitches_per_student, :student_vote_first_round, presence: true
end
