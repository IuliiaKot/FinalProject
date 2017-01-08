class PitchesController < ApplicationController
  before_action :require_user
  before_action :find_pitch, only: [:destroy, :edit, :update]

  def index
    if current_user.type == 'Student'
      @pitches = current_user.pitches

    else
      @pitches = Setting.find_by(active: true).cohort.pitches
    end
  end

  def new
    @pitch = Pitch.new
  end

  def create
    @pitch = current_user.pitches.new(pitch_params)
    if @pitch.save
      flash[:notice] = 'Pitch was successfully created'
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

  def votingresult
    setting = Setting.where(active: true)
    if setting.empty?
      @notice = "Thre is not active cohort right now. Probably you need to create a new one."
    else
      @pitches = setting.last.cohort.pitches.sort_by {|pitch| -pitch.votes.count}
    end
  end


# teacher choose projects for second round

  def rank
    cohort = Cohort.last
    pitch = Pitch.find_by(id: params[:pitch_id])
    if pitch.final
      pitch.update(final: false)
      render :json => {}
    else
      if (cohort.pitches.in_second_round.count >= cohort.setting.number_in_second_round)
        render :json => {warning: "Number of pitches in second round should be #{cohort.setting.number_in_second_round}"}
      else
        pitch.update(final: true)
        render :json => {count: Cohort.last.pitches.in_second_round.count, message: "Project #{pitch.title} was successfully added"}
      end
    end
  end

  def ranking

    @pitches = Cohort.last.pitches.in_second_round
    @errors = {}
    if @pitches.empty?
      @errors[:notice] = ['Wait for teacher action']
    end
  end


  private
    def find_pitch
      @pitch = Pitch.find_by(id: params[:id])
    end

    def pitch_params
      params.require(:pitch).permit(:title, :description)
    end
end
