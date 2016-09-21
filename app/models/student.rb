class Student < User
  belongs_to :cohort
  has_many :pitches
  has_many :votes

  def full_name
    "#{self.first_name} #{self.last_name}"
  end


  def upvoted?(pitch)
    !(self.votes.where(pitch_id: pitch.id).count.zero?)
  end

end
