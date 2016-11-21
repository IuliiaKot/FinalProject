class StudentsController < ApplicationController

  before_action :require_user, only: [:edit, :update]

  def new
    @student = Student.new
    @cohorts = Cohort.all.map {|cohort| [cohort.name, cohort.id]}
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      session[:user_id] = @student.id
      redirect_to new_pitch_path
    else
      @errors = @student.errors.full_messages
      render 'new'
    end
  end

  def edit
    #
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(email: params[:student][:email])
    if @student && @student.update_attributes(password: params[:student][:password])
      redirect_to home_path
    else
      @errors = @student.errors.full_messages
      render "edit"
    end
  end

  private
    def student_params
      params.require(:student).permit(:email, :first_name, :last_name, :password, :cohort_id)
    end
end
