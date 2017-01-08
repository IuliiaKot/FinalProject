class SettingsController < ApplicationController

  def new
    @cohort = Cohort.find_by(id: params[:cohort_id])
    @setting = @cohort.build_setting
  end


  def create
    @setting = Cohort.find_by(id: params[:cohort_id]).build_setting(setting_params)
    if @setting.save
      redirect_to home_url, notice: "Cohort was successfully created."
    else
      @errors = @setting.errors.full_messages
      render 'new'
    end
  end


  def edit
    @setting = Setting.find_by(active: true)
    @cohort = @setting.cohort
  end

  def update

    cohort = Cohort.find(params[:setting][:cohort_id])
    if cohort.setting
      cohort.setting.update_attributes(setting_params)
      redirect_to home_url
    else
      @errors = ['error']
      render 'edit'
    end
  end

  private
    def setting_params
      params[:setting][:active] = true
      params.require(:setting).permit(:active, :pitches_per_student, :student_vote_first_round, :number_in_second_round, :number_of_teams)
    end
end
