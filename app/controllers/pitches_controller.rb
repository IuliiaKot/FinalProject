class PitchesController < ApplicationController
  before_action :find_pitch, only: [:destroy, :edit, :update]

  def index
    # debugger
    if current_user.type == 'Student'
      @pitches = current_user.pitches
    else
      @pitches = Pitch.all
    end
  end

  def new
    @pitch = Pitch.new
  end

  def create
    @pitch = current_user.pitches.new(pitch_params)
    if @pitch.save
      redirect_to pitches_path
    else
      @errors = @pitch.errors.full_messages
      render 'new'
    end
  end

  def edit
  end

  def update
    if @pitch.update(pitch_params)
      redirect_to pitches_path
    else
      render 'edit'
    end
  end

  def destroy
    @pitch.delete
    redirect_to pitches_path
  end

  private
    def find_pitch
      @pitch = Pitch.find_by(id: params[:id])
    end

    def pitch_params
      params.require(:pitch).permit(:title, :description)
    end
end
