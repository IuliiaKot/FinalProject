class StudentsController < ApplicationController
  def new
    @student = Student.new
    @cohorts = Cohort.all.map {|cohort| [cohort.name, cohort.id]}
  end

  def create
    debugger
    @student = Student.new(student_params)
    if @student.save
      session[:user_id] = @student.id 
      redirect_to new_pitch_path
    else
      @errors = @student.errors.full_messages
      render 'new'
    end
  end

  private
    def student_params
      params.require(:student).permit(:email, :first_name, :last_name, :password, :cohort_id)
    end
end
