class RanksController < ApplicationController

  def setrank
    #  
    pitch = Pitch.find_by(id: params[:pitch_id])
    pitch.ranks.create(rank: params[:rank], student_id: current_user.id)
  end

  def teams
    setting = Setting.where(active: true)
    if setting.empty?
      @notice = "Thre is not active cohort right now. Probably you need to create a new one."
    else
      @pitches = setting.last.cohort.pitches.where(final: true)
    end
  end
end
