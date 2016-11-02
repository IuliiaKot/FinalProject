class VotesController < ApplicationController
  before_action :require_user

  def firstround
    @pitches = current_user.cohort.pitches
  end


# studetn upvote for firstround
  def upvote
    #  
    pitch = Pitch.find_by(id: params[:pitch_id])
    #  
    vote_wich_exist = Vote.where("pitch_id = ? and student_id = ?", pitch.id, current_user.id)
    if !vote_wich_exist.empty?
      vote_wich_exist.delete_all
        render :json =>  {delete: "delete current vote"}
    else
      if (current_user.votes.count >= current_user.cohort.setting.number_in_second_round)
        render :json => {message: "You can choose only #{current_user.cohort.setting.number_in_second_round} ideas"}
      else
        pitch.votes.create(count: 1, student_id: current_user.id)
        render :json =>  {count: current_user.votes.count}
      end
    end
  end
end
