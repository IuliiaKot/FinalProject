class RanksController < ApplicationController

  def setrank
    # debugger
    pitch = Pitch.find_by(id: params[:pitch_id])
    pitch.ranks.create(rank: params[:rank], student_id: current_user.id)
  end

  def teams
    @pitches = Cohort.last.pitches.where(final: true)
  end
end