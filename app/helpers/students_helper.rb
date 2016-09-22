module StudentsHelper

  def current_user
        # debugger
    student = Student.find_by(id: session[:user_id])
    if student
      @current_user ||= student
    else
      @current_user ||= Teacher.find_by(id: session[:user_id])
    end
  end


  def loggin?
    !!(current_user)
  end

  def require_user
    redirect_to root_path unless loggin?
  end
end
