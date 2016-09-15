class Cohort < ApplicationRecord
  has_many :students
  has_many :pitches, through: :students
end
