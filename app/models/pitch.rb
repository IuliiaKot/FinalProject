class Pitch < ApplicationRecord
  belongs_to :student
  has_many :votes
  has_many :ranks

  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 10}

end
