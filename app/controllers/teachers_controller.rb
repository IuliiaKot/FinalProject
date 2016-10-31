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
    redirect_to teachers_settings_path
  end

  def import
    Cohort.import(params[:file])
    # redirect_to root_url, notice: "Cohort imported."
    redirect_to teachers_settings_path
  end
end
