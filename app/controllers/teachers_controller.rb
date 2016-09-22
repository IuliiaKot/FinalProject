class TeachersController < ApplicationController
  # def new
  # end
  #
  # def create
  # end

  def login
    # debugger
    @teacher = Teacher.new
  end

  def create
    # debugger
    @teacher = Teacher.find_by(email: params[:teacher][:email])
    if @teacher && @teacher.authenticate(params[:teacher][:password])
      session[:user_id] = @teacher.id
      redirect_to pitches_path
    else
      @errors = ['Invalid password/email']
      render 'login'
    end
  end
end
