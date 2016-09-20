class PitchesController < ApplicationController
  include StudentsHelper

  def index

  end

  def new

  end

  def create
    @pitch = current_user.pitches.new(pithc_params)
    if @pitch.save
    else
    end
  end

  private
    def pitch_params
      params.require(:pitch).permit(:working_title, :description, :student_id)
    end
end
