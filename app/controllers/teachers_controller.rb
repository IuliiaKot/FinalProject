require 'csv'
class TeachersController < ApplicationController

  def login
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.find_by(email: params[:teacher][:email])
    if @teacher && @teacher.authenticate(params[:teacher][:password])
      session[:user_id] = @teacher.id
      redirect_to home_path
    else
      @errors = ['Invalid password/email']
      render 'login'
    end
  end

  def settings
    @cohort = Cohort.new
  end

  def create_cohort
    Cohort.import(params[:file])
    # redirect_to teachers_settings_path
    redirect_to show_cohort_settings_teachers_path
  end

  def show_cohort_settings
  end

  def set_cohort_settings
    @setting = Setting.new(setting_params)
    if @setting.save
      redirect_to home_url, notice: "S"
    else
      @errors = @setting.errors.full_messages
      render 'show_cohort_settings'
    end
  end


  def edit
    @cohort = Cohort.last
    @setting = @cohort.setting
  end


  def update_cohort_setting
    #
    cohort = Cohort.find(params[:setting][:cohort_id])
    if cohort.setting
      cohort.setting.update_attributes(setting_params)
      redirect_to home_url
    else
      @errors = ['error']
      render 'edit'
    end
  end


  def active_first_round
    cohort = Cohort.last.setting
    cohort.active_first_round = true
    cohort.save
  end


  def archive_cohort
    setting = Setting.find_by(active: true)
    setting.active = false
    setting.save
  end
  # def import
    # StudentAccountMailer.sample_email(User.last, 'h').deliver_now
    # Cohort.import(params[:file])
    # redirect_to root_url, notice: "Cohort imported."
    # redirect_to teachers_settings_path
  # end

  private
    def setting_params
      params[:setting][:cohort_id] = Cohort.last.id
      params[:setting][:active] = true
      params.require(:setting).permit(:cohort_id, :active, :pitches_per_student, :student_vote_first_round, :number_in_second_round, :number_of_teams)
    end
end
