module TeamsHelper
  def check_if_active
    redirect_to '/home' unless Setting.find_by(active: true)
  end
end
