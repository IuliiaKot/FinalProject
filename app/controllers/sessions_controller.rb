class SessionsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.find_by(email: params[:student][:email])
    if @student && @student.authenticate(params[:student][:password])
      session[:user_id] =@student.id
      redirect_to new_pitch_path
    else
      @errors = ['Invalid email/password']
      render 'new'
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to new_session_path
  end
end
