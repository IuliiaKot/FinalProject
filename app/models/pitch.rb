class Pitch < ApplicationRecord
  belongs_to :student
  has_many :votes, dependent: :destroy
  has_many :ranks, dependent: :destroy

  has_one :team, dependent: :destroy


  scope :in_second_round, -> {where final: true }

  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 10}

end
