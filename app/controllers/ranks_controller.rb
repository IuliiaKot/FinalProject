class RanksController < ApplicationController

  def setrank
    #
    pitch = Pitch.find_by(id: params[:pitch_id])
    find_rank = current_user.ranks.any? { |rank| rank.rank == params[:rank].to_i }
    if find_rank
      render :json => {message: "You alredy used #{params[:rank]} for #{pitch.title}"}
    else
      pitch.ranks.create(rank: params[:rank], student_id: current_user.id)
    end
  end

  def teams
    setting = Setting.where(active: true)
    @students = Cohort.last.students
    if setting.empty?
      @notice = "There is not active cohort right now. Probably you need to create a new one."
    else
      @pitches = setting.last.cohort.pitches.where(final: true)
    end
  end
end
