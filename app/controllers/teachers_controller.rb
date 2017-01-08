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


  def edit_profile
    @teacher = Teacher.find_by(id: params[:id])
  end

  def update_profile
    @teacher = Teacher.find_by(email: params[:teacher][:email])
    if @teacher && @teacher.update_attributes(password: params[:teacher][:password])
      redirect_to home_path
    else
      @errors = @teacher.errors.full_messages
      render "edit_profile"
    end
  end


  def active_first_round
    cohort = Cohort.find_by(active: true).setting
    cohort.active_first_round = true
    cohort.save
  end


  def archive_cohort
    setting = Setting.find_by(active: true)
    setting.active = false
    setting.save
    redirect_to '/home'
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
