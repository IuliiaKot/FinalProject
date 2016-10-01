class TeachersController < ApplicationController

  def login
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.find_by(email: params[:teacher][:email])
    if @teacher && @teacher.authenticate(params[:teacher][:password])
      session[:user_id] = @teacher.id
      redirect_to pitches_path
    else
      @errors = ['Invalid password/email']
      render 'login'
    end
  end


  def settings
  end

  def create_cohort
  end
end
