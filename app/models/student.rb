class Student < ApplicationRecord
  belongs_to :cohort
  has_many :pitches

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
