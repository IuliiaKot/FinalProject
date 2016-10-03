class VotesController < ApplicationController
  before_action :require_user

  def firstround
    @pitches = Cohort.last.pitches
  end

  def upvote
    # debugger
    pitch = Pitch.find_by(id: params[:pitch_id])
    if (current_user.votes.count >= current_user.cohort.setting.number_in_second_round)
      render :json => {message: "You can choose only #{Cohort.last.setting.number_in_second_round} ideas"}
    else
      pitch.votes.create(count: 1, student_id: current_user.id)
      render :json =>  {count: current_user.votes.count}
    end
  end
end
