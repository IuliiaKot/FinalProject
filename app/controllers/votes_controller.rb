class VotesController < ApplicationController
  before_action :require_user

  def firstround
    @pitches = current_user.cohort.pitches
  end


# studetn upvote for firstround
  def upvote
    pitch = Pitch.find_by(id: params[:pitch_id])
    vote_wich_exist = Vote.where("pitch_id = ? and student_id = ?", pitch.id, current_user.id)

    if !vote_wich_exist.empty?
      vote_wich_exist.delete_all
      votes = current_user.votes.count
      render :json =>  {delete: "delete current vote", votes: votes}
    else
      if (current_user.votes.count >= current_user.cohort.setting.student_vote_first_round)
        render :json => {warning: "You can choose only #{current_user.cohort.setting.student_vote_first_round} ideas"}
      else
        pitch.votes.create(count: 1, student_id: current_user.id)
        votes = current_user.votes.count
        render :json =>  {count: current_user.votes.count, message: "You just vote on project #{pitch.title}", votes: votes}
      end
    end
  end
end
