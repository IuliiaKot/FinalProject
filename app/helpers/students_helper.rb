module StudentsHelper

  def current_user
    @current_user ||= Student.find_by(id: session[:user_id])
  end

  def loggin?
    !!current_user
  end

  def require_user
    redirect_to new_student_path unless loggin?
  end
end
