module TeamsHelper
  def check_if_active
    redirect_to '/home' if Setting.find_by(active: true).cohort.teams.empty?
  end
end
