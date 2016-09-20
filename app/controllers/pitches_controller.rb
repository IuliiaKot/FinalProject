class PitchesController < ApplicationController
  include StudentsHelper

  def index
    @pitches = Pitch.all
  end

  def new

  end

  def create
    @pitch = current_user.pitches.new(pithc_params)
    if @pitch.save
      redirect_to '/'
    else
      @errors = @pitch.errors.full_messages
      render 'new'
    end
  end

  private
    def pitch_params
      params.require(:pitch).permit(:working_title, :description, :student_id)
    end
end
