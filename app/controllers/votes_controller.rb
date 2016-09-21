class VotesController < ApplicationController
  def upvote
    # debugger
    pitch = Pitch.find_by(id: params[:pitch_id])
    pitch.votes.create(count: 1, student_id: current_user.id)
    render :json =>  {count: current_user.votes.count}
  end
end
