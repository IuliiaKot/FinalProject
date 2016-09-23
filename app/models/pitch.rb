class Pitch < ApplicationRecord
  belongs_to :student
  has_many :votes
  has_many :ranks

end
