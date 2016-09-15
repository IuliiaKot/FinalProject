class Student < ApplicationRecord
  belongs_to :cohort
  has_many :pitches
end
