class Student < User
  belongs_to :cohort
  has_many :pitches
  has_many :votes
  has_many :ranks

  def full_name
    "#{self.first_name} #{self.last_name}"
  end


  def upvoted?(pitch)
    !(self.votes.where(pitch_id: pitch.id).count.zero?)
  end

  def self.find_student_for_team(pitch_id, rank)
    all.joins(ranks: :pitch).merge(Pitch.where(id:pitch_id)).merge(Rank.where(rank: 1))
  end

  def author?(pitch)
    # debugger
    self.ranks.order('rank ASC').first.pitch == Pitch.find_by(title: pitch) && self.ranks.order('rank ASC').first.pitch.student == self
  end

end
