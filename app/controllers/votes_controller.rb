class VotesController < ApplicationController
  def upvote
    debugger
    pitch = Pitch.find_by(id: params[:pitch_id])
    pitch.votes.create(count: 1)
    render :json =>  {count: pitch.votes.count}
  end
end
