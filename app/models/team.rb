class Team < ApplicationRecord
  # has_many :students
  belongs_to :pitch
  belongs_to :student


  belongs_to :cohort
end
