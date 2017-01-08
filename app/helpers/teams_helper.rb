module TeamsHelper
  def check_if_active
    redirect_to '/home' if Setting.where(active: true).empty?
  end
end
