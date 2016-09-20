class UsersController < ApplicationController
  def new
    @user = Student.new
    @cohorts = Cohort.all.map {|cohort| [cohort.name, cohort.id]}
  end

  def create
    @user = Student.new(student_params)
    if @user.save
      redirect_to new_pitch_path
    else
      @errors = @user.errors.full_messages
      render 'new'
    end
  end

  private
    def student_params
      params.require(:user).permit(:email, :first_name, :last_name, :password)
    end
end
