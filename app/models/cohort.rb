class Cohort < ApplicationRecord
  has_many :students
  has_many :pitches, through: :students
  has_one :setting
end
