class RanksController < ApplicationController

  def setrank
    # debugger
    pitch = Pitch.find_by(params[:pitch_id])
    pitch.ranks.create(rank: params[:rank], student_id: current_user.id)
  end
end
