class Pitch < ApplicationRecord
  belongs_to :student
  has_many :votes
  has_many :ranks

  scope :in_second_round, -> {where final: true}

  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 10}

end
